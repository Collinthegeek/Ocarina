#/bin/bash
clear
#Copyright 2016 Collin Norwood. https://github.com/Collinthegeek/Ocarina
function jumpto
{
    label=$1
    cmd=$(sed -n "/$label:/{:a;n;p;ba};" $0 | grep -v ':$')
    eval "$cmd"
    exit
}
start=${1:-"start"}
jumpto $start
start:
echo "Welcome. This is going to be buggy and broken and I'll probably never finish it."
echo "If you have any problems make an issue at https://github.com/Collinthegeek/Ocarina"
echo "You should probably maximize/fullscreen your terminal or you may encounter text wrapping problems"
echo 

echo "Type your name to begin"
read name
echo "Okay, Now I'm starting the script from the game."
echo
echo "Loading. . . . ."
sleep 2
clear
2:
echo
echo "Deku Tree : In the vast, deep forest of Hyrule... Long have I served as the guardian spirit... I am known as the Deku Tree..."
echo
echo "* A boy named $name is seen sleeping inside of a treehouse."
echo
echo "Deku Tree : The children of the forest, the Kokiri, live here with me. Each Kokiri has his or her own guardian fairy."
echo "However, there is one boy who does not have a fairy..."
echo "* $name dreams of Hyrule Castle Town amid a rainstorm. The town's drawbridge lowers, allowing a horse carrying a girl and a woman to leave."
echo "* The girl looks at $name, who stands outside of the town walls, as the horse gallops out of sight."
echo 
echo "* Soon, a man emerges from the town atop a horse. He raises his left hand, and directs the palm thereof toward $name."
echo
echo "* The dream ends."
echo
echo "Deku Tree : Navi... Navi, where art thou? Come hither...."
echo
echo "      Oh, Navi the fairy... Listen to my words, the words of the Deku Tree... Dost thou sense it? The climate of evil descending upon this realm..."
echo "      Malevolent forces even now are mustering to attack our land of Hyrule..."
echo "      For so long, the Kokiri Forest, the source of life, has stood as a barrier, deterring outsiders and maintaining the order of the world..." 
echo "      But... before this tremendous evil power, even my power is as nothing"
echo "      It seems the time has come for the boy without a fairy to begin his journey... The youth whose destiny it is to lead Hyrule to the path"
echo "      of justice and truth..."
echo "      Navi...go now! Find our young friend and guide him to me... I do not have much time left. Fly, Navi, fly! The fate of the forest, nay,"
echo "      the world, depends upon thee!"
echo
echo "* Navi leaves the Deku Tree, and looks about within the Kokiri's area of the forest. After some difficulties, lastly flying into a fence,"
echo "* Navi arrives at $name's treehouse and finds him sleeping."


read command
if [ "$command" = "first command" ]; then
   echo "command results"
   jumpto 3
elif [ "$command" = "second command" ]; then
     echo "results"
     jumpto 2
else
echo "not found message"
jumpto 2
fi
3:
echo "second desc."
read command
if [ "$command" = "etc" ]; then
   echo "etc"
   exit
else
   echo "etc"
   jumpto 3
fi
Status 
