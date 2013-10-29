include Java

import javax.swing.JFrame
import java.awt.event.KeyListener
import java.awt.Graphics

MAIN_HOME = File.dirname(File.expand_path(__FILE__))
require MAIN_HOME + '/mvc/observer'
require MAIN_HOME + '/mvc/controllerview'
require MAIN_HOME + '/mvc/subject'
require MAIN_HOME + '/mvc/model'
require MAIN_HOME + '/mvc/glyph'
require MAIN_HOME + '/mvc/row'
require MAIN_HOME + '/mvc/character'

model = Model.new
view = ControllerView.new(model)
view2 = ControllerView.new(model)
