class Model < Subject
  def initialize
    @glyphs = Array.new
    @observers = Array.new
  end

  def attach v
    @observers.push(v)
  end

  def dettach
  end

  def notify_observers
    @observers.each do |observer|
      observer.update()
    end
  end

  def addGlyph g
    @glyphs.push(g)
    self.notify_observers
  end

  def draw g
    @glyphs.each do |glyph|
     glyph.draw(g)
    end
  end

  def numGlyphs
    return @glyphs.length
  end
end
