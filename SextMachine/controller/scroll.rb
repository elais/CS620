class Scroll < Controller
  def handleEvent e
    keyCode = e.getKeyCode
    if !e.isControlDown && keyCode == KeyEvent::VK_DOWN
      self.increaseStratRow
      @controller.document.refresh
    elsif e.isControlDown && keyCode == KeyEvent::VK_UP
      self.decreaseStratRow
      @controller.document.refresh
    else
      c = e.getKeyChar().chr
      if c == "f".chr
        @document.addGlyph(Arrow.new())
      else
        @document.addGlyph(CharacterGlyph.new(c))
      end
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
