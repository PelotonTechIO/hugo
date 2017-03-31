# Hugo Static Site Generator's Web Server

Hugo Static Site Generator Web Server.


### Build the image.

```
docker build . adron/hugo
```

### Running the image.

In detached mode.

```
docker run -d -t -p 3000:3000 adron/hugo hugo server --port 3000
```

In interactive mode.
```
docker run -i -t -p 3000:3000 adron/hugo hugo server 
```