"" auto reload after modification
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost .vimrc source .vimrc
augroup END " }

set makeprg=make\ -C\ build\ -j10
map <F12> :!ctags -f tags --exclude=amalgamated -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q -I  _GLIBCXX_NOEXCEPT .<CR>
