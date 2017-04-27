# System
alias path='echo -e ${PATH//:/\\n}'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias h='history'
alias j='jobs -l'

# Python
alias ipython='ipython --no-banner --no-confirm-exit --pdb --autocall=1'
clean() { find . \( -name \*.pyo -o -name \*.pyc -o -name "#"\* -o -name \*~ -o -name \*"_flymake.py" \) -exec rm -f \{\} \+ ; }
pgrep() { grep -R --include=*.py "$1" . ; }
alias simplehttp='python -m SimpleHTTPServer'

# Docker
alias drma='docker rm $(docker ps -aq)'
alias drmi='docker rmi $(docker images -q -f "dangling=true")'
alias drit='docker exec -it'
alias drip='docker inspect --format="{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}"'
