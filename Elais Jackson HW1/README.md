### README and Thoughts on KWIC Implementation
#### Elais Jackson
###### ekjack18#uab.edu
##### CS620 Homework 1

There are a few things that need to be addressed about the KWIC implementation. One the program is written in the ruby programming language. In general that means in order for you to run the program you have to type in the command

	ruby master_control1.rb

That will run the first implementation presented in Parnas' paper. Likewise running 

	ruby master_control2.rb
	
Will implement the second implementation in Parnas' paper that uses line storage module.

#### Some thoughts on the two implementations

Though neither were particularly difficult to implement, the date of the paper was shown in how many aspects of the implementations basically ignored object-oriented design. Despite that fact the implementations themselves were not overall hard to make happen.

Both schemes worked well and in fact it felt like both decompositions were basically the same program. The only real difference was that decomposition two stored its lines in a separate module while decomposition one stored its lines in the input module. On the surface this seems insignificant, but with the input stored in another module, we can make changes to the way the lines are stored, adding methods to line storage and only having to change input to get those messages when the time comes to use them in other modules.

In terms of software engineering principles, the second decomposition allows us to hide the complexity of the input medium, allowing those classes that use the input to be blissfully unaware of its implications. Parnas believes that there will not be constraints on the structure of the tables due to the algorithms used in other modules with the second decomposition. I disagree somewhat, as even I believe constraints will still be apparent given the output each new module receives from preceding modules. The only module that takes its input in isolation of other modules is input.