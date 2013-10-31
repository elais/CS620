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
      col += 1
    end
  end

  def getWidth
    @glyph_list.each do |glyph|
      @width += glyph.getWidth
    end
    return @width
  end

  def getHeight
    @glyph_list.each do |glyph|
      @height += 1
    end
    return @height
  end
end
