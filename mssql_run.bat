REM docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=SuperString321" --name my_mssql -d -p 1433:1433 -t microsoft/mssql-server-linux

docker stop my_mssql
docker commit my_mssql mssql_wip
docker rm my_mssql
docker run --name my_mssql -d -p 1433:1433 -t mssql_wip
