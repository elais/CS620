class SpellChecker
  def initialize
    @dictionary = Dictionary.new
  end

  def load path
    reader = BufferedReader.new(java.io.FileReader.new(path))
    @word = ""
    begin
      @dictionary[word] = @word
    end while (@word = reader.readLine) != nil
  end

  def isMispelled
    @dictionary.has_key?(@word)
  end
end
