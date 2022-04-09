" Build upon HTML syntax
runtime! syntax/html.vim

" Pretend there's no syntax loaded
unlet b:current_syntax

" Bring in TS syntax for frontmatter
syntax include @TS syntax/typescript.vim
syntax match astroFrontmatterFence "^---$" contained

syn region astroFrontmatter start=/^---$/ end=/^---$/ keepend contains=@TS,astroFrontmatterFence

hi astroFrontmatterFence guifg=#f43753

let b:current_syntax = 'astro'
