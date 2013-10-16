class CircularShift
  def initialize(lines)
    @lines= lines
    @shifted= Array.new
    @i= 0
    @num = @lines.length
    @stopwords = File.open("english.txt", "r").readlines.map!(&:chomp)

    begin
      sentence = @lines[0]
      sentence = sentence.split(" ")
      sentence = sentence - @stopwords
      @shifted.push([@i, sentence[0]])
      line = @lines[0]
      @lines.shift
      @lines.push(line)
      @i +=1;
    end while @i < @num

    return 
  end
end
