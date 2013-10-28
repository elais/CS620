class CircularShift
  def initialize(lines)
    @HOME= File.dirname(File.expand_path(__FILE__))
    @lines= lines
    @shifted= Array.new
    @i= 0
    @num = @lines.length
    @stopwords = File.open(@HOME + "/english.txt", "r").readlines.map!(&:chomp)

    begin
      sentence = @lines[0].downcase
      sentence = sentence.split(" ")
      sentence = sentence - @stopwords
      j= 0
      begin
        word = sentence[0]
        @shifted.push([@i, @j, word])
        sentence.shift
        sentence.push(word)
        j +=1;
      end while j < sentence.length
      line = @lines[0]
      @lines.shift
      @lines.push(line)
      @i +=1;
    end while @i < @num

  end

  def get_circular()
    @shifted
  end
end
