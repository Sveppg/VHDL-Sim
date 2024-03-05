#!/bin/sh

echo "This Script will automate simualting vhdl models..."


usage(){
	echo "Usage : $0 <Design.vhdl> <Testbench.vhdl>" >&2
	exit 1

}
Sim(){
	cd /home/tw1/Documents/ModelSIm
	echo "Type in a name for your Design:"
	read i
	ghdl -s $1
	ghdl -s $2
	ghdl -a $1
	ghdl -a $2
	ghdl -e $i
	ghdl -r $i
	ghdl -r $i --vcd=$i.vcd
	gtkwave $i.vcd
}	
if [ $# -ne 2 ]; then 
	usage
else
	Sim "$1" "$2"
fi
