require MASTER_HOME + '/system2/line_storage'
class Input
  def initialize()
    lines= STDIN.gets.chomp
    lines= lines.split(/[,.;!?]/ )
    @lines = LineStorage.new
    @lines.add_lines(lines)
    
    
  end
  def get_input
    @lines.get_storage
  end
end
