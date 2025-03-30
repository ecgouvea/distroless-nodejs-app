# distroless-nodejs-app

Build it:

```
docker build -t my-distroless-nodejs-app -f Dockerfile1 .
```

Run the image:

```
docker run -d -p 8000:3000 my-distroless-nodejs-app:latest
```

Test it:

```
$ while true; do curl localhost:8000 ; echo ; sleep .5 ; done
Hello, World!Sun Mar 30 2025 00:08:16 GMT+0000 (Coordinated Universal Time)

Hello, World!Sun Mar 30 2025 00:08:16 GMT+0000 (Coordinated Universal Time)

Hello, World!Sun Mar 30 2025 00:08:17 GMT+0000 (Coordinated Universal Time)

Hello, World!Sun Mar 30 2025 00:08:17 GMT+0000 (Coordinated Universal Time)

Hello, World!Sun Mar 30 2025 00:08:18 GMT+0000 (Coordinated Universal Time)

Hello, World!Sun Mar 30 2025 00:08:18 GMT+0000 (Coordinated Universal Time)
```
