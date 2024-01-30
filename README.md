# 🔒 Local HTTPS Proxy

This simple docker setup allows you access a domain via https which is internally proxied to your localhost at a specific port numer

For example, you can access:

```
https://local.kultmedia.com
```

and see the content that is being served by:

```
http://localhost:7008
```

This can be useful when using tools like [Resource Override](https://chromewebstore.google.com/detail/resource-override/pkoacgokdfckfpndoffpifphamojphii) to avoid CORS errors and other SSH issues.


## Variables

The project is using some variables that can be customized inside [Dockerfile](Dockerfile)
Here is the recap:

| Variable Name | Description                                              | Default value       |
|---------------|----------------------------------------------------------|---------------------|
| CUSTOM_PORT   | This is the port where your localhost service is running | 7008                |
| CUSTOM_DOMAIN | This is the domain that you will access via https        | local.kultmedia.com |



## How to use

### Create the certificates
In order to have https working correctly, you will need to generate the certificates from your machine

- Install [mkcert](https://github.com/FiloSottile/mkcert) on your machine
- Run `mkcert -install`
- Now move into the `certs` folder of this project
- Run `mkcert local.kultmedia.com 127.0.0.1 ::1` (if you customized the domain, use your custom one)
- If the command worked correctly you should have two new files:
   - `local.kultmedia.com.pem`
   - `local.kultmedia.com.key.pem` 
- If the two files are not named like this, rename them as specified above
  - In case you customized the domain, the certificates need to be named accordingly, following the above mentioned naming convention



### Running the Docker image
- Make sure that [Docker](https://www.docker.com/) is installed and running
- Run with `docker-compose up --build`


### Done 🎉
- Launch the service running at port 7008
- Now access http://local.kultmedia.com


<br /><br />

---

# Extra stuff

## Using a custom domain
If you use the default domain (local.kultmedia.com) you don't need to do anything else, since this domain is already pointing to localhost. However, if you want to use a custom domain, you also need to make sure that this domain resolves locally to localhost.
In macOS this is done by editing the hosts file:

```
sudo nano /etc/hosts
```
 
 Now, assuming that your domain is `dummydomain.local.dev`, add this line:

 ```
 127.0.0.1       dummydomain.local.dev
 ```

 Make sure to save the file. Now the domain will resolve to localhost.