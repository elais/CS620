MASTER_HOME= File.dirname(File.expand_path(__FILE__))
require MASTER_HOME + '/system2/alphabetizer'
require MASTER_HOME + '/system2/circular_shift'
require MASTER_HOME + '/system2/input'
require MASTER_HOME + '/system2/output'
require MASTER_HOME + '/system2/line_storage'
print "Hi, I'm a KWIC system implemented by Elais. Give me your sentence(s)\n\n"

storage=Input.new.get_input
shift=CircularShift.new(storage).get_circular
alpha=Alphabetize.new(storage, shift).get_alphabetized
Output.new(storage,alpha).get_printed
