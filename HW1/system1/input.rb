class Input
  def initialize()
    lines=STDIN.gets.chomp    #gets input from standard input
    @parsed_lines=lines.split(/[.;,?!] /)  #converts string to array, delimiter is  space
  end

  def get_input()
    @parsed_lines
  end
end
