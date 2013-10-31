include Java

import javax.swing.JFrame
import java.awt.event.KeyListener
import java.awt.event.ComponentListener
import java.awt.Graphics

MAIN_HOME = File.dirname(File.expand_path(__FILE__))
require MAIN_HOME + '/util/observer'
require MAIN_HOME + '/controller/controllerview'
require MAIN_HOME + '/util/subject'
require MAIN_HOME + '/model/document'
require MAIN_HOME + '/model/glyph'
require MAIN_HOME + '/model/row'
require MAIN_HOME + '/model/character'

model = Document.new(SimpleBreak.new)
ControllerView.new(model)
ControllerView.new(model)
