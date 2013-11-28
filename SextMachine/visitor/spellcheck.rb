class SpellCheckVisitor < Visitor
  def initialize
    @currentWord = ""
    @currentGlpyhs = Array.new
    @glyphs = Array.new
  end

  def visitChar c
    if c.match(/^[[:alpha]]$/) || c.match(/^[[:digit]]$/)
      @currentWord.push(c)
      @currentGlyphs.push(c)
    else
      @glyphs.delete(glyphs.length -1)
      self.spellCheck
      @glyphs.clear
    end
  end

  def spellCheck
    word = @currentWord.to_s
    if !word == "" && SpellChecker.isMispelled(word)
      if @spellingHandler != nil
        @spellingHandler.handleSpellingError(@currentWord.to_s,
                                             @glyphs.to_a)
      end
    end
    @currentWord = ""
    @currentGlyphs.clear
  end

  def visitImage
  end

  def visitRow row
    g = row.getGlyphs
    g.each do |glyph|
      @glyphs.push(glyph)
      glyph.accept(self)
    end
    if @currentWord.length > 0
      self.spellCheck
    end
  end
end
