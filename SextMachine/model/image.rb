class Image < Glyph
  def initialize pic, path
    @image = pic
    @path = path
  end

  def draw g, x, y
    g.drawImage(self.getImage, x +3, y, nil)
  end

  def getWidth
    self.getImage.getWidth + 2
  end

  def getHeight
    self.getImage.getHeight + 15
  end

  def accept visitor
    visitor.visitPicture(self)
  end

  def getImage
    if @image == nil
      @image = IO.popen(MAIN_HOME + "util/images/e405.jpg")
    end
    return @image
  end
end

