class Output
  def initialize(input, alphabetize)
    @input= input
    @alphabetize= alphabetize
  end
  
  def get_printed
    @alphabetize.each do |index|
      printf("\n...%s...\n",@input[index[0]].sub(/(#{index[2]})/i, index[2].upcase))
    end
  end
  def get_input(a,b)
    puts @input[a..b]
  end
end
