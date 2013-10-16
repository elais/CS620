class Input
  def initialize(lines)
    @lines=lines    #gets input from standard input
    @parsed_lines=@lines.split(/[.;,?!] /)  #converts string to array, delimiter is  space
    return @parsed_lines
  end
end
