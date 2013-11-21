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
    @commands.reverse.each do |cmd|
      cmd.unExecute
    end
  end

  def undo
    @currentCommand.unExecute
    @commands.remove[-1]
    @currentCommand = @commands[-1]
  end

#  def redo
#    if @currentCommand == nil
#      @currentCommand.redo
#    end
#  end
end
