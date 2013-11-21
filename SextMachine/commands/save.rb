class Save < Command
  def initialize document, path
    @document = document
    @path = path
  end

  def execute
    @document.saveToFile(@path)
  end

  def unExecute
  end
end
