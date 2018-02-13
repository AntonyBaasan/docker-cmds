REM docker run --name my_elastic -d -p 9200:9200 -t docker.elastic.co/elasticsearch/elasticsearch:6.2.1

REM below steps are done in order to port forwarding
REM https://stackoverflow.com/questions/19335444/how-do-i-assign-a-port-mapping-to-an-existing-docker-container
docker stop my_elastic
docker commit my_elastic my_elastic_wip
docker rm my_elastic
docker run --name my_elastic -d -p 8983:8983 -t my_elastic_wip
