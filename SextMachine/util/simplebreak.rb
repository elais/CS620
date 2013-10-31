class SimpleBreak < Format
  def initialize(glyphs, frameWidth, frameHeight)
    @width = frameWidth
    @height = frameHeight
  end

  def linebreak g, width, height
    glyphs = g
  end
end
