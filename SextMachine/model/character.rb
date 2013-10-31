class CharacterGlyph < Glyph
  def initialize c
    @c = c
  end

  def draw(g, x, y)
    g.drawString(@c, x, y)
  end

  def getWidth
    return @width
  end

  def getHeight
    return @width
  end
end
