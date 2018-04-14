## Build the container
```bash
$ docker build -t react-example-app .
```

## Run it
```bash
$ docker run -it \
  -v ${PWD}:/src/app \
  -v /src/app/node_modules \
  -p 3000:3000 \
  --rm react-example-app
```

## Run it with Hot Reload

```bash
$ docker run -it \
  -v ${PWD}:/src/app \
  -v /src/app/node_modules \
  -p 3000:3000 \
  -e CHOKIDAR_USEPOLLING=true \
  --rm react-example-app
```
