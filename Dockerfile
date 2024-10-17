FROM jenkins/ssh-agent:alpine-jdk17

# Add any additional configuration or dependencies here

# Example: Install a specific SSH client
RUN apk add openssh-client

# Copy your SSH private key to the container (replace with your key path)
#COPY your_ssh_private_key.pem /root/.ssh/id_rsa

# Change permissions for the private key
RUN chmod 600 /root/.ssh/id_ed25519

# Set up known hosts (optional)
COPY known_hosts /root/.ssh/known_hosts
