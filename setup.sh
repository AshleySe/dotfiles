dotfilearray=(vimrc bash_profile)
mkdir $HOME/olddotfiles 2> /dev/null
for name in ${dotfilearray[@]}
do
	mv $HOME/.$name $HOME/olddotfiles 2> /dev/null
	echo $name
	ln -s $HOME/dotfiles/$name $HOME/.$name
done
