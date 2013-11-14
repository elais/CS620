class BasicDraw < Controller
  def initialize document, format
    @document = document
    @format = format
  end

  def draw(g, x, y, frameWidth, frameHeight)
    rows = self.format(frameWidth, frameHeight)
    rows.each do |row|
      row.draw(g, x, y)
      y += row.getHeight
    end
  end

  def keyPressed e
    c = e.getKeyChar().chr
    if c == "f".chr
      @document.addGlyph(Arrow.new())
    else
      @document.addGlyph(CharacterGlyph.new(c))
    end
  end

  def format(frameWidth, frameHeight)
#    rowGlyphs = Array.new
    rowGlyphsList = @format.linebreak(@document.getGlyphs, frameWidth, frameHeight)
    return rowGlyphsList
  end


  def mouseClicked e
    x = e.getX
    y = e.getY
    puts "mouse clicked at position " + x + " , " + y
  end
end
