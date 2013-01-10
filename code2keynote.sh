for x in `ls *.rb`
do 
  qlmanage -p $x -o .
done
