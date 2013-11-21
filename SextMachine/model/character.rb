class CharacterGlyph < Glyph
  def initialize c
    @c = c
    @width = 10
    @height = 12
  end

  def draw(g, x, y)
    g.drawString(@c + "", x, y)
  end

  def getWidth
    return @width
  end

  def getHeight
    return @Height
  end
end
