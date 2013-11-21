class BasicDraw < Controller
  def initialize document, format
    @document = document
    @format = format
    @commander = CommandDispatcher.new
  end

  def draw(g, x, y, frameWidth, frameHeight)
    rows = self.format(frameWidth, frameHeight)
    rows.each do |row|
      row.draw(g, x, y)
      y += row.getHeight
    end
  end

  def document
    @document
  end
  def handleEvent e
    keyCode = e.getKeyCode
    if !e.isControlDown && (keyCode > 1 && keyCode < 223)
      if keyCode == KeyEvent::VK_BACK_SPACE
        @commander.undo
      elsif keyCode != KeyEvent::VK_BACK_SPACE
        c = e.getKeyChar.chr
        command = Insert.new(@document, CharacterGlyph.new(c))
        @commander.execute(command)
      end
    elsif e.isControlDown && (c != 'u')
      @commander.redo
    end
#    if c == "f".chr
#      @document.addGlyph(Arrow.new())
#    else
#    @document.addGlyph(CharacterGlyph.new(c))
#    end
  end

  def keyTyped e
    self.handleEvent e
  end

  def format(frameWidth, frameHeight)
#    rowGlyphs = Array.new
    rowGlyphsList = @format.linebreak(@document.getGlyphs, frameWidth, frameHeight)
    return rowGlyphsList
  end


  def mouseClicked e
    x = e.getX
    y = e.getY
    puts "mouse clicked at position " + x + " , " + y
  end
end
