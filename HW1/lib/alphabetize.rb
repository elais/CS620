class Alphabetize
  def initialize(input, circular)
    @input = input # module 1 input
    @circular = circular # module 2 input
    sorted = @circular.sort {|a,b| a[1] <=> b[1]}
    return sorted
  end

end
