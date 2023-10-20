#!/bin/sh

# Load variables from the external file
. /path/to/variables.sh

# Create the SSH tunnel. The auto-retry is handled by a while loop.
create_tunnel() {
    while true; do
        # -N means do not execute a remote command. 
        # -f tells ssh to go to the background just before command execution. 
        # -L specifies the local port and remote port to forward to.
        # -i specifies the path to the private key file.
        ssh -N -f -i $SSH_KEY -L $LOCAL_PORT:localhost:$REMOTE_TUNNEL_PORT $REMOTE_USER@$REMOTE_HOST -p $REMOTE_PORT
        
        # If the ssh command fails (tunnel breaks), wait for 5 seconds and then retry.
        sleep 5
    done
}

# Call the function to create the tunnel.
create_tunnel
