#docker Ubooquity

## Description:
Ubooquity is a free, lightweight and easy-to-use home server for your comics and ebooks.  
Use it to access your files from anywhere, with a tablet, an e-reader, a phone or a computer.

## Build from docker file:

```
git clone --depth=1 https://github.com/hurricanehernandez/ubooquity.git 
cd ubooquity
docker build --rm=true -t ubooquity . 
```

## Volumes:

#### `/config`

Location of configurations files, logs, and jar file of Ubooquity.

### `/media`

Location of files you wish to share via Ubooquity.

## Environment variables:

### `UBOOQUITY_PORT`

Port to be used by Ubooquity default port is 8085.


## Instructions:

* Run the docker command.

## Docker run command:

```
docker run -d -p 8085:8085 -v /*Ubooquity_cofing_dir*:/config -v /*your_media_location*:/media -v /etc/localtime:/etc/localtime:ro --name=Ubooquity hurricane/ubooquity

```
