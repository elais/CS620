include Java

class Row < Glyph
  def initialize
    super "Row"

    self.init
  end

  def init
    @observers = Array.new

end
