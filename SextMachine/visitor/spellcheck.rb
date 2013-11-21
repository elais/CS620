class SpellCheck < Visitor
  def initialize
    @currentWord = Array.new
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
    if !word
