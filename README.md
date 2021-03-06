# Centos SSH Server

Docker container for running OpenSSH server on a Centos.

## Steps

### Clone the project
```
git clone https://github.com/secdevoops/ssh-server.git
```
and then go to the project directory
```
cd ssh-server
```

### Build the image

```
docker build --tag ssh-server:latest .
```

### Run the container

```
docker run -d --name ssh-server -p 22:22 ssh-server:latest
```

### Access to the container via ssh
To access via SSH to the container you need to use the key my_key

```
ssh -i ./my_key root@localhost
```

Alternatively you can generate your own ssh key pair with the command
```
ssh-keygen -t rsa -b 4096 -C "your_email@your_company.com" -f my_key
```

If a different key file name is used, you need to modify it on the Dockerfile


