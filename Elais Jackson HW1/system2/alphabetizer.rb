class Alphabetize
  def initialize(input, circular)
    @input = input # module 1 input
    @circular = circular # module 2 input
    @sorted = @circular.sort{|a,b| a[2] <=> b[2]}
  end

  def get_alphabetized()
    @sorted
  end
    
  def get_ith(i)
    @circular[i]
  end
end