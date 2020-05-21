#!/sbin/sh

main() {
    while [ 1 ]; do
        status=$(getprop network.eth0.ready)
        grep eth0 /proc/net/dev >/dev/null 2>&1 
        result=$?
        if [ $result -ne 0 ] && [ "$status" != "false" ]; then
            setprop network.eth0.ready false
        elif [ $result -eq 0 ] && [ "$status" != "true" ]; then
            setprop network.eth0.ready true
        fi
        sleep 10
    done
}

main &
