function pip
set command $argv[1]
set -e argv[1]
switch "$command"
case 'search'
pypisearch $argv
case 'sea'
pypisearch $argv
case 'se'
pypisearch $argv
case 's'
pypisearch $argv
case '*'
command pip $command $argv
end
end
