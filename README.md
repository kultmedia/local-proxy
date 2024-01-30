# Local Proxy

This simple docker setup allows you to redirect a locally configured domain to your localhost, pointing to a specific port number.

Specifically, this is currently used for forwarding:

```
local.kultmedia.com
```

to

```
localhost:7008
```

---
**NOTE**

The port is currently hardcoded in the `httpd.conf` file (look for `ProxyPass` and `ProxyPassReverse`). If you need a different port (or host), just edit the file accordingly.

---

## How to use

### Running the Docker image
- Clone this project
- Make sure that [Docker](https://www.docker.com/) is installed and running
- Run with `docker-compose up --build`


### Done 🎉
- Launch the service running at port 7008
- Now access http://local.kultmedia.com


---

# Extra stuff

## Running with https
In certain cases we might want to run the proxy in https. In this case, some extra steps need to be taken:
- Install [mkcert](https://github.com/FiloSottile/mkcert) on your machine
- Run `mkcert -install`
- Now move into the `certs` folder of this project
- Run `mkcert local.kultmedia.com 127.0.0.1 ::1`
- If the command worked correctly you should have two new files:
   - `local.kultmedia.com.pem`
   - `local.kultmedia.com.key.pem` 
- If the two files are not named like this, rename them as specified above
- Restart the docker container. You should now be able to access the host with https ( https://local.kultmedia.com )