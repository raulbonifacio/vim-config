
! command -v git > /dev/null && echo 'Git is not installed. (Required by vim-plug)' ||  \
! command -v node > /dev/null &&  echo 'Node JS is not installed. (Required by vim-coc)' || \
! command -v jq > /dev/null &&  echo 'JqS is not installed. (Required by Vim Rest Console)' || \
! command -v rg > /dev/null &&  echo 'ripgrep is not installed. (Required by CocSearch)' && \
echo 'Please install these dependencies to proceed.' && \
exit;

#Install vim-plug
curl -fLo ./autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#Run and configurer vim
vim --cmd 'source ./plug.vim | PlugClean | PlugInstall | qa!';

#Create the undodir
! test -d undodir && mkdir undodir;

