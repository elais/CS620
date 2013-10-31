class Row < Glyph
  def initialize

    self.init
  end

  def init
  end

  def draw(g, x, y)
    col = x
    row = y
    @glyph_list.each do |glyph|
      glyph.draw(g, col, row)
      col += glyph.getWidth
    end
  end

  def getWidth
    @width = 12
    @glyph_list.each do |glyph|
      @width += glyph.getWidth
    end
    return @width
  end

  def getHeight
    @height = 20
    @glyph_list.each do |glyph|
      @height += 1
    end
    return @height
  end
end
