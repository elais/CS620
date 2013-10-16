class Alphabetize
  def initialize(module1, module2)
    @mod1 = module1 # original input
    @mod2 = module2 # circular shifted input
  end

  def get_alphabetized()
    return @mod2
  end
end
