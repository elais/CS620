class Output
  def initialize(input, alphabetize)
    @input= input
    @alphabetize= alphabetize
    @alphabetize.each do |index|
      printf("\n...%s...\n",@input[index[0]].sub(/(#{index[1]})/i, index[1].upcase))
    end
  end
end
