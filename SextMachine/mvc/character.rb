include Java
import java.awt.Graphics

class CharacterGlyph < Glyph

  def initialize

    self.init
  end

  def init

    @observers = Array.new
  end

  def attach v
    observers.push(v)
  end

  def notify_observers
    @observers.each do |observer|
      observer.update()
    end
  end


  def draw g
    g.drawString(c + " ", 50, 50)
  end
end
