vim.cmd([[
let maplocalleader = ","
nmap <localleader>c <Plug>(vimtex-compile)

autocmd BufWinEnter *.py nnoremap <F3> :w<CR>:!python3 %:p<CR>



]])
