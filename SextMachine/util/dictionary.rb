class Dictionary
  def initialize
    @data = Hash.new{ |hash, key| hash[key] = []}
  end

  def [](key)
    @data[key]
  end

  def []=(key,words)
    @data[key] += [words].flatten
    @data[key].uniq!
  end
end

