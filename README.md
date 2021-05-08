# docker-signdog
usage:  
```
mkdir -p /opt/autocheckin/data/ && docker run -p 9930:9930 -v /opt/autocheckin/data:/opt/autocheckin/data pa733/signdog
```
or:  
```
mkdir -p /opt/autocheckin/data/ && docker run --network=host -v /opt/autocheckin/data:/opt/autocheckin/data pa733/signdog
```
