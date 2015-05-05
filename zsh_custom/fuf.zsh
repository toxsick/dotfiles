alias fufblog='cd ~/Coding/fuf/froehlichundfrei.github.io && gulp'

alias machineroom='
running=`docker ps | grep -c machineroom`
existing=`docker ps -a | grep -c machineroom`
if [[ $running -eq 1 ]]; then
    echo "machineroom container already running..";
    docker attach machineroom;
elif [[ $existing -eq 1 ]]; then
    echo "starting existing machineroom container..";
    docker start machineroom;
    docker attach machineroom;
else
    echo "starting new machineroom container..";
    docker run -it --volumes-from datadock -v /usr/local/bin/docker:/usr/local/bin/docker -v /var/run/docker.sock:/var/run/docker.sock --name machineroom -h machineroom machineroom;
fi
'
