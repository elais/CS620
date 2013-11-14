class Scroll < Controller
  def initialize concrete
    @concrete = concrete
    @startFrom = 1
  end

  def handleEvent e
    keyCode = e.getKeyCode
    if keyCode == KeyEvent::VK_DOWN
      self.increaseStratRow
      @concrete.document.notify_observers
    elsif keyCode == KeyEvent::VK_UP
      self.decreaseStratRow
      @concrete.document.notify_observers
    else
      @concrete.handleEvent e
      @concrete.document.notify_observers
    end
  end

  def attach s
    @simpleDraw = s
  end

  def decreaseStratRow
    @startFrom -= 1
    if @startFrom < 0
      @startFrom == 0
    end
  end

  def draw(g, x, y, frameWidth, frameHeight)
    @concrete.draw(g, x, y, frameWidth, frameHeight)
  end

  def increaseStratRow
    @startFrom += 1
  end

  def format frameWidth, frameHeight
    rowGlyph_list = @format.linebreak(@document.getGlyphs, frameWidth, frameHeight)
    return rowGlyph_list
  end

  def setFormatStrategy f
    @format = f
  end

  def getFormatStrategy
    return @format
  end

  def keyPressed e
    self.handleEvent e
  end
end