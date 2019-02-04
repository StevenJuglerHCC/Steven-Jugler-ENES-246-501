# Voltage Controlled Buffers  
Why doesn't **Vivado** allow two switches to control one LED?  Because one switch could try to send "on" to the LED. The other switch could try to send "off" to the LED.  They would fight.  Ultimately something would burn up .. the Nexys4 DDR board would be damaged. 

This is solved by moving from two states of on or off to three states or "triState" which include states of on, off and don't care.  Don't care has many names including "open" and "high  impedance", and "infinite output impedance".



![1545961610045](1545961610045.png)



#### Port Diagram

![Lab2P1Port](Lab2P1Port-1549314086130.PNG)



#### Verilog Code



![Lab2P1Code](Lab2P1Code.PNG)

#### RTL Schematic Screen shot

![1545961610045](1545961610045.png)



#### Synthesis Schematic Screen shot



![Lab2P1Synth](Lab2P1Synth.PNG)

#### Implementation Device screen shot zoomed in on something interesting  



![Lab2P1Interest](Lab2P1Interest.PNG)

#### Testing

Here is the above different from the two state situation from the first lab.  When sw0 is 0, the tristate buffer doesn't try to ground the LED. It outputs nothing. *What is the difference between 0 (false) and nothing .. don't care .. high input impedance... etc?* 

*What happens when both switches are zero (false)? What could happen?*

**The LED will be off.**



*So what is the difference between 0 and off?* 

**0 is false, but it does tell the system something, nothing means that it doesn't care**



*What is the difference between 0 and 1?* 

**They are opposites, 1 = true, 0 = false.**



*What kind of gate (and, nand, or, nor, xor, xnor, not) is this circuit?*

**it is an OR gate.**





## BeCreative!

Hook the switches to the LED's in some creative way of your choice using the concepts you learned in this lab.  Think about the circuits that cell phones are going to control in your home. Imagine all the remotes, all the physical wall switches, all the on off  buttons and dimmer buttons in all devices begin controlled by your cell phone. You are designing a circuit to be imbedded in all devices and walls. 



#### Port Diagram

![Lab2P2Port](Lab2P2Port.PNG)



#### Verilog Code

![Lab2P2Code](Lab2P2Code.PNG)



#### RTL Schematic Screen shot

![Lab2P2RTL](Lab2P2RTL.PNG)



#### Synthesis Schematic Screen shot

![Lab2P2Synth](Lab2P2Synth.PNG)



#### Implementation Device screen shot zoomed in on something interesting

![Lab2P2Interest](Lab2P2Interest.PNG)



#### Testing



Many people are replacing light bulbs with LED's that last forever. Most are 12 volt DC.  They are being connected to AC through wall warts that waste energy. Some are running 12 volt systems in parallel with the AC. Some are using AC to switch the 12 volt. 

​	[wikipedia Multiway_Switching Traveler_system_2](https://en.wikipedia.org/wiki/Multiway_switching#Traveler_system_2)

There is a transition, a business opportunity, a standards opportunity here.  Compare the "3-way" and "4-way switches" at Home Depot or Lowes.  

*Can a voltage controlled buffer reduce the amount of copper needed?*

