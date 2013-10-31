class CharacterGlyph < Glyph
  def initialize c
    @c = c
  end

  def draw(g, x, y)
    g.drawString(@c, x, y)
  end

  def getWidth
    @width = 12
    return @width
  end

  def getHeight
    @height = 12
    return @width
  end
end
