class LineStorage
  def initialize
    @storage= Array.new
  end

  def char(r,w,c)
    @storage[r].split(" ")[w][c]
  end

  def setchar(r,w,c,d)
    @storage[r].split(" ")[w][c] = d
  end
  def add_lines(lines)
    @storage= @storage + lines
  end
  def words(r)
    r.split.size
    
  end
  
  def get_storage
    @storage
  end
end
