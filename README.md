# Hugo Static Site Generator's Web Server

Hugo Static Site Generator Web Server.


### Build the image.

```
docker build . adron/hugo
```

### Running the image.

In detached mode.

```
docker run -d -p 1313:1313 adron/hugo hugo server
```

docker run -i -t adron/hugo bash