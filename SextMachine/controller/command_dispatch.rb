class CommandDispatcher
  def initialize
    @commands = Array.new
    @currentCommand == nil
  end

  def setCommand cmd
    @currentCommand = cmd
    cmd.execute
    @commands.push(cmd)
  end

  def undoAll
    @commands.each do |cmd|
      cmd.undo
    end
  end

  def undo
    @commands.remove[-1]
    @currentCommand = @commands[-1]
  end

  def redo
    if @currentCommand?
      @currentCommand.redo
    end
  end
end
