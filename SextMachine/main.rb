include Java

import java.awt.event.KeyEvent
import java.awt.event.KeyListener
import java.awt.event.ComponentListener
import java.awt.event.MouseListener
import java.awt.Graphics
import java.awt.FontMetrics
import javax.swing.JFrame

MAIN_HOME = File.dirname(File.expand_path(__FILE__))
require MAIN_HOME + '/util/context'
require MAIN_HOME + '/util/subject'
require MAIN_HOME + '/util/strategy'
require MAIN_HOME + '/util/simplebreak'
require MAIN_HOME + '/util/observer'
require MAIN_HOME + '/model/glyph'
require MAIN_HOME + '/model/character'
require MAIN_HOME + '/model/arrow_glyph'
require MAIN_HOME + '/model/row'
require MAIN_HOME + '/model/command'
require MAIN_HOME + '/model/document'
require MAIN_HOME + '/commands/command_dispatch'
require MAIN_HOME + '/commands/backspace'
require MAIN_HOME + '/commands/insert'
require MAIN_HOME + '/controller/controller'
require MAIN_HOME + '/controller/basicdraw'
require MAIN_HOME + '/controller/scroll'
require MAIN_HOME + '/view/view'
require MAIN_HOME + '/view/controllerview'

model = Document.new
controller = Scroll.new(BasicDraw.new(model, SimpleBreak.new))
view = View.new(controller, model)
