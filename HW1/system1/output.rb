class Output
  def initialize(input, alphabetize)
    @input= input
    @alphabetize= alphabetize
    @alphabetize.each do |index|
      puts @input[index[0].gsub(/index[1]/,index[1].upper)]
    end
  end
end
