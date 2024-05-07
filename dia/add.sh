cp -r $(dirname "$(realpath $0)")/ethernet/* $HOME/.dia/

n=$(grep -n 'compress_save' $HOME/.dia/persistence | sed "s/:.*//")
nn=$((n + 2))
sed -i "$n,$nn s/true/false/" $HOME/.dia/persistence
