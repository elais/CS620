class ControllerView < JFrame
  include KeyListener, Observer, ComponentListener
  def initialize model
    super "Sext Machine"
    @document = model
    self.initUI
  end

  def initUI
    self.addKeyListener self
    @document.attach self
    self.setLayout nil
    self.setDefaultCloseOperation ::JFrame::EXIT_ON_CLOSE
    self.setSize 450, 400
    self.setLocationRelativeTo nil
    self.setVisible true
    @frameWidth = self.getWidth
    @frameHeight = self.getHeight
  end

  def update
    g = getGraphics()
    self.setSize 
    @document.draw(g)
    self.paint(g)
    self.repaint
  end

  def paint g
    @document.draw(g, x, y, @frameWidth, @frameHeight)
  end

  def window(x, y)
    @frameWidth = x
    @frameHeight = y
  end

  def keyPressed e
    c = e.getKeyChar().chr
    @document.addGlyph(CharacterGlyph.new(c))
  end

  def keyTyped e
  end

  def keyReleased e
  end

  def componentResized
    @document.notifySizeChange
  end


end
