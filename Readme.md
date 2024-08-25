### Create the local project
* Open terminal and run the following commands:
```bash
    npm install
    npm install express http-errors body-parser mongoose cors --save
```

### Docker implementation local environment (local)
* Open terminal and run the following commands:
```bash 
  docker build -t articlexpress-image .
  docker run -name articlexpress -p 5005:5005 -d articlexpress-image
```

### Docker implementation remote environment
* Open terminal and run the following commands:
```bash 
  docker build -t dangeliza/articlexpress-image:v1 .
  docker tag dangeliza/articlexpress-image:v1 dangeliza/articlexpress-image
  docker push dangeliza/articlexpress-image
  docker builder prune -a 
```




