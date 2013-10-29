class ControllerView < JFrame
  include KeyListener, Observer
  def initialize model
    super "Sext Machine"
    @model = model
    self.initUI
  end

  def initUI
    self.addKeyListener self

    @model.attach self
    self.setLayout nil
    self.setDefaultCloseOperation ::JFrame::EXIT_ON_CLOSE
    self.setSize 450, 400
    self.setLocationRelativeTo nil
    self.setVisible true
  end

  def update
    g = getGraphics()
    @model.draw(g)
    self.paint(g)
    self.repaint
  end

  def paint g
    @model.draw(g)
  end

  def keyPressed e
    c = e.getKeyChar().chr
    @model.addGlyph(CharacterGlyph.new(c))
  end

  def keyTyped e
  end

  def keyReleased e
  end


end
