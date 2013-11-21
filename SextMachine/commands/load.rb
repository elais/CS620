class Load < Command
  def initialize document, path
    @document = document
    @path - path
  end

  def execute
    @document.loadFromFile(@path)
  end

  def unExecute
  end
end
