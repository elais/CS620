MASTER_HOME= File.dirname(File.expand_path(__FILE__))
require MASTER_HOME + '/system1/alphabetize'
require MASTER_HOME + '/system1/circular_shift'
require MASTER_HOME + '/system1/input'
require MASTER_HOME + '/system1/output'

print "Hi, I'm a KWIC system implemented by Elais. Give me your sentence(s)\n"
@in= Input.new(gets.chomp)
@shift= CircularShift.new(@trial)
@alpha= Alphabetize.new(@trial, @shift)
@out= Output.new(@in, @alpha)
