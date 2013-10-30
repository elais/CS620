class Row < Glyph
  def initialize

    self.init
  end

  def init
    @observers = Array.new
  end

  def draw(g, x, y)
  end
end
