class Output
  def initialize(input, alphabetize)
    @input= input
    @alphabetize= alphabetize
    print @alphabetize
    @alphabetize.each do |index|
      print @input[index[0]].sub(index[1], index[1].upcase) + "\n\n"
    end
  end
end
