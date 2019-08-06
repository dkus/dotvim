let g:ale_linters = {
            \'rust': ['rls'],
            \'go': ['gopls'],
            \'python': ['pyls', 'pylint'],
            \'java': ['checkstyle', 'javac']}
let g:ale_fixers = {
            \'*': ['remove_trailing_lines', 'trim_whitespace'],
            \'rust': ['rustfmt'],
            \'go': ['goimports', 'gofmt']}
let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'
let g:ale_java_checkstyle_config = expand('~/.checkstyle/google_checks.xml')
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1

set completeopt=menu,menuone,preview,noselect,noinsert
