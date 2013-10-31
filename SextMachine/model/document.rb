class Document
  include Context, Subject
  def initialize format
    @glyphs = Array.new
    @observers = Array.new
    self.setFormat format
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

  def notifySizeChange
    self.notify_observers
  end

  def addGlyph g
    @glyphs.push(g)
    self.notify_observers
  end

  def draw(g, x, y, frameWidth, frameHeight)
    rows = self.format(frameWidth, frameHeight)
    rows.each do |row|
      rows.draw(g, x, y)
      y += row.getWidth
    end
  end

  def numGlyphs
    return @glyphs.length
  end

  def setFormat f
    @format = f
  end

  def format(frameWidth, frameHeight)
    rowGlyphs = Array.new
    rowGlyphsList = @format.linebreak(@glyphs, frameWidth, frameHeight)
    return rowGlyphsList
  end
end
