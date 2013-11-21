class CharacterGlyph < Glyph
  def initialize c
    @c = c
    @font = Font.new("Helvetica", Font::PLAIN, 12)
    canvas = Canvas.new
    @fontMetric = canvas.getFontMetrics(@font)
  end

  def draw(g, x, y)
    @font = g.getFont
    @fontMetric = g.getFontMetrics(@font)
    g.drawString(@c + "", x, y)
  end

  def getWidth
    width = @fontMetric.stringWidth(@c)
    return width
  end

  def getHeight
    height = @fontMetric.getHeight
    return height
  end

  def getChar
    @c
  end

  def accept visitor
    visitor.visitChar(self)
  end
end
