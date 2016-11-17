" Golang 
nmap <leader>i :GoImports<CR>
nmap <leader>b :wall<CR>:GoBuild<CR>
nmap <leader>r :!go run %
nnoremap <leader>a :cclose<CR>

map <F4> :GoImports<CR>
map <F8> :GoBuild<CR>
map <F9> :cnext<CR>
map <F7> :cprevious<CR>

map<F5> :!goapp build<CR>

setlocal foldmethod=indent


