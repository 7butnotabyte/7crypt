#!/bin/bash
fn=$1
hl=$1
fl=$2
jv=$3
nm=$4
n=$5
case $fn in
	-e| --encrypt	)
		clear
			echo "
			Searching args...
			"
				sleep	1
				;;
			*)
		clear
		echo "
  -------------------------------------------
  |                 7crypt         	        |
  |                  Usage                  |
  |     -e -f filename.py -n filename       |
  | -e \ --encrypt (for encrypting program) |
  | -f \ --file (for target the program)    |
  | -n \ --name (for the file name)         |
  |             -h \ --help                 |
  |                                         |
  -------------------------------------------

               Coder; 7byte#6576
		"
		;;
esac

case $fl in
	-f| --file	)
		echo "
		Finding file...
		"
			sleep	2
				if [ -f $jv ]
				then
					echo "
					File founded, encrypt proccess started...
					"
						sleep	4
							python -OO -m py_compile $jv
						else
							echo "
							File not founded, please try again...
							"
				fi
		esac

		case $nm in
			-n| --name	)
				echo "
				Searching file name...
				"

					sleep	1
						echo "
						File name founded...
						"
							sleep	2
								mv $n.pyo $n.py
									echo "
									File name changed...
									"
									;;
							esac

case $fn in
	-h| --help	)
		if [ -e /usr/share/man/man6/lolcat.6.gz ]
		then
			clear
				echo "
  -------------------------------------------
  |                 7crypt    	            |
  |                Help area                |
  |                                         |
  | -e \ --encrypt (for encrypting program) |
  | -f \ --file (for target the program)    |
  | -n \ --name (for the file name)         |
  |             -h \ --help                 |
  |                                         |
  -------------------------------------------

                Coder: 7byte#6576
				"	|	lolcat
			else
				sudo apt-get install lolcat -y
		fi
		;;
esac
