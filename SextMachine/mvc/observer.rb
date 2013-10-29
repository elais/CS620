include Java

import javax.swing.JFrame
import java.awt.event.KeyListener

class Observer < JFrame
  include KeyListener
  def initialize
    super "Sext Machine"

    self.initUI
  end

  def initUI
    self.addKeyListener self

    @glyph = CharacterGlyph.new
    self.setLayout nil
    self.setDefaultCloseOperation ::JFrame::EXIT_ON_CLOSE
    self.setSize 450, 400
    self.setLocationRelativeTo nil
    self.setVisible true
  end

  def update
    g = getGraphics()
    self.paint(g)
  end

  def paint g
    @glyph.draw(g)

  end

  def keyPressed e
    id = e.getKeyChar().chr
    if id == KeyEvent.KEY_TYPED
      c = e.getKeyChar().chr
    end
    self.repaint
  end

  def keyTyped e

  end

  def keyReleased e
  end


end
