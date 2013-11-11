class Scrollable < Drawable
  def initialize document
    super document
    @document = document
  end

  def draw g, x, y, frameWidth, frameHeight, fromRow
    @document.draw(g, x, y, frameWidth, frameHeight, 0)
  end
end
