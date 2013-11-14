class Scroll < Controller
  def initialize concrete
    @concrete = concrete
  end

  def handleEvent e
    keyCode = e.getKeyCode
    puts keyCode
    if !e.isControlDown && keyCode == KeyEvent::VK_DOWN
      self.increaseStratRow
    elsif !e.isControlDown && keyCode == KeyEvent::VK_UP
      self.decreaseStratRow
    else
      @concrete.keyPressed e
    end
  end

  def attach s
    @simpleDraw = s
  end

  def decreaseStratRow
    startFrom -= 1
    if startFrom < 0
      startFrom == 0
    end
  end

  def increaseStratRow
    startFrom += 1
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
