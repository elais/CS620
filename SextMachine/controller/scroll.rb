class Scroll < Controller
  def handleEvent e
    keyCode = e.getKeyCode
    if e.controlDown? == false && keyCode == keyEvent.VK_DOWN
      self.increaseStratRow
      @controller.document.refresh
    elsif e.controlDown? && keyCode == keyEvent.VK_UP
      self.decreaseStratRow
      @controller.document.refresh
    else
      @controller.handleEvent e
    end
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
