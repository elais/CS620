class CharacterGlyph < Glyph

  def initialize c
    @c = c
  end

  def draw g
    g.drawString(@c, 50, 50)
  end
end
