let g:ale_linters = {
            \'rust': ['rustc', 'rls', 'cargo'],
            \'go': ['gopls'],
            \'python': ['pyls', 'pylint'],
            \'java': ['checkstyle', 'javac']}
let g:ale_fixers = {
            \'*': ['remove_trailing_lines', 'trim_whitespace'],
            \'go': ['goimports', 'gofmt']}
let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'
let g:ale_java_checkstyle_config = expand('~/.checkstyle/google_checks.xml')
