# User on Server A
REMOTE_USER="remote_user"
# Hostname or IP of Server A
REMOTE_HOST="remote_ip"
# Port of SSH on Server A
REMOTE_PORT="22"
# SSH Key for the connection
SSH_KEY="/path/to/ssh/key"
# Local port for the tunnel (example: 8080 for Server B, 8081 for Server C)
LOCAL_PORT="8080"
# The remote port that will be opened on Server A. This should be unique for each server.
REMOTE_TUNNEL_PORT="9000"
