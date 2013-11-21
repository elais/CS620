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
    if !e.isControlDown
      c = e.getKeyChar().chr
      command = Insert.new(@document, CharacterGlyph.new(c))
      @commander.execute(command)
#      @document.addGlyph(CharacterGlyph.new(c))
    elsif e.isControlDown && (c != 'u')
      @commander.undo
#    elsif e.isMetaDown && e.isShiftDown && (c != 'z') && (keyCode == 90)
#      @command.re
    end
#    if c == "f".chr
#      @document.addGlyph(Arrow.new())
#    else
#    @document.addGlyph(CharacterGlyph.new(c))
#    end
  end

  def keyPressed e
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
