class CircularShift
  def initialize(lines)
    @lines= lines
    @shifted= Array.new
    @i= 0
    @num = @lines.length

    begin
      sentence = @lines[0]
      sentence = sentence.split(" ")
      @shifted.push([@i, sentence[0][0]])
      word = @lines[0]
      @lines.shift
      @lines.push(word)
      @i +=1;
    end until @i >= @num - 1

  end

end
