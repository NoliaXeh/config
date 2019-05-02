let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1

set encoding=utf-8 fileencodings=
syntax on
set tabstop=8
set shiftwidth=4
set softtabstop=4
set number
set expandtab
set smartindent
set mouse=a
autocmd FileType make setlocal noexpandtab
colorscheme molokai
highlight ColorColumn ctermbg=2*
set colorcolumn=80
highlight ExtraWhitespace ctermbg=6* guibg=red
match ExtraWhitespace /\s\+$/
set laststatus=2
set statusline+=%f
set list
set listchars=tab:»-
autocmd FileType sql colorscheme slate
autocmd FileType html set filetype=htmldjango
