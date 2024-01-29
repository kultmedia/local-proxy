# Local Proxy

This simple docker setup allows you to redirect a locally configured domain to your localhost, pointing to a specific port number.

Specifically, this is currently used for forwarding:

```
nle.local.styla.eu 
```

to

```
localhost:7008
```

---
**NOTE**

The redirect is currently hardcoded in the `httpd.conf` file (look for `ProxyPass` and `ProxyPassReverse`). If you need a different redirect, just edit the file accordingly.

---

## How to use

### Setting up the hosts file
Run `sudo nano /etc/hosts` to open your hosts file. Then add the following line:
```
127.0.0.1       nle.local.styla.eu
``````


### Running the Docker image
- Clone this project
- Make sure that [Docker](https://www.docker.com/) is installed and running
- Run with `docker-compose up --build`


### Done 🎉
- Launch the service running at port 7008
- Now access http://nle.local.styla.eu