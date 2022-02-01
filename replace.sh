#Replace the current .vimrc file with the system .vimrc file.

RED='\033[0;31m'
NC='\033[0m' # No Color

printf "${RED}WARNING:${NC}.vimrc in this directory will be overwritten.\n"
printf "Do you want to continue(y/n): "
read FLAG
if [ $FLAG == 'y' ] || [ $FLAG == 'Y' ]; then
  cp ~/.vimrc .
else
  exit 0
fi

