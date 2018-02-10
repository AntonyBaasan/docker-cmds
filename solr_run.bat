docker run --name my_solr -d -p 8983:8983 -t solr

REM below steps are done in order to port forwarding
REM https://stackoverflow.com/questions/19335444/how-do-i-assign-a-port-mapping-to-an-existing-docker-container
REM docker stop my_solr
REM docker commit my_solr solr_wip
REM docker rm my_solr
REM docker run --name my_solr -d -p 8983:8983 -t solr_wip
