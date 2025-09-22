#!/bin/bash
# This line tells the system to use the bash shell to run this script

####################################################################
# Install Apache Web Server
####################################################################

# Update all installed packages
dnf update -y

# Install Apache (httpd)
dnf install -y httpd

# Start and enable Apache
systemctl start httpd
systemctl enable httpd

####################################################################
# Set Variables
####################################################################

IMAGE="https://www.greatestphysiques.com/wp-content/uploads/2017/03/vivi-winkler-2-768x768.jpg"
TEXT="Be a Man Challenge 1.2"

# AWS metadata

### local webserver that every EC2 instance can talk to
#below gives you api data
BASE_URL="http://169.254.169.254/latest"
HEADERS="X-aws-ec2-metadata-token"
TOKEN=$(curl -X PUT "$BASE_URL/api/token" -H "$HEADERS-ttl-seconds: 3600" -s)

LOCAL_IP=$(curl -H "$HEADERS: $TOKEN" -s "$BASE_URL/meta-data/local-ipv4")
AZ=$(curl -H "$HEADERS: $TOKEN" -s "$BASE_URL/meta-data/placement/availability-zone")
MAC_ID=$(curl -H "$HEADERS: $TOKEN" -s "$BASE_URL/meta-data/network/interfaces/macs/" | tr -d '/')
VPC_ID=$(curl -H "$HEADERS: $TOKEN" -s "$BASE_URL/meta-data/network/interfaces/macs/${MAC_ID}/vpc-id")
HOST_NAME=$(hostname -f)

####################################################################
# Create index.html for Apache
####################################################################

###cat - Writes a multi-line block of text to a file, great for generating HTML or config files from a script

cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
    <title>EC2 Instance Info</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 40px; }
        h1 { color: #232f3e; }
        p { margin: 10px 0; }
        img { max-width: 300px; margin: 20px 0; }
    </style>
</head>
<body>
    <h1>${TEXT}</h1>
    
    <h2>New Joint!</h2>
    <p>I found my wife on a party yacht in Marbella! Her name is:</p>
    <p>Vivi</p>

    <img src="${IMAGE}" alt="Instance Image">

    <h2>Instance Details</h2>
    <p><strong>Hostname:</strong> ${HOST_NAME}</p>
    <p><strong>Private IP:</strong> ${LOCAL_IP}</p>
    <p><strong>Availability Zone:</strong> ${AZ}</p>
    <p><strong>VPC ID:</strong> ${VPC_ID}</p>
</body>
</html>
EOF

####################################################################
# Optional: Log success (for debugging)
####################################################################
echo "Setup complete at $(date)" >> /var/log/user-data.log