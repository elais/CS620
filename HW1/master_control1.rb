MASTER_HOME= File.dirname(File.expand_path(__FILE__))
require MASTER_HOME + '/system1/alphabetize'
require MASTER_HOME + '/system1/circular_shift'
require MASTER_HOME + '/system1/input'
require MASTER_HOME + '/system1/output'

print "Hi, I'm a KWIC system implemented by Elais. Give me your sentence(s)\n\n\n"
input= Input.new.get_input
shift= CircularShift.new(input).get_circular
alpha= Alphabetize.new(input, shift).get_alphabetized
Output.new(input, alpha)
