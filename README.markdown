# EM-Udns

fork from [ibc/em-udns](https://github.com/ibc/em-udns)

add ttl for A query

## prepare

debian

    apt-get install ruby-dev
    gem install eventmachine
    
archlinux

    pacman -S ruby ruby-eventmachine

## build

    cd em-udns
    gem build
    gem install em-udns-0.3.6.2.gem
