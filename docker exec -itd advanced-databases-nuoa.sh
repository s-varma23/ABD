docker exec -itd advanced-databases-nuoadmin1-1 nuodocker --api-server nuoadmin1:8888 start sm --db-name test --server-id nuoadmin1 --dba-user dba --dba-password goalie
docker exec -itd advanced-databases-nuoadmin1-1 nuodocker --api-server nuoadmin1:8888 start te --db-name test --server-id nuoadmin1
docker exec -it advanced-databases-nuoadmin1-1 nuocmd show domain


docker exec -it advanced-databases-nuoadmin1-1 bash
nuosql test@nuoadmin1 --schema hockey --user dba --password goalie \
</opt/nuodb/samples/quickstart/sql/create-db.sql >& /dev/null
nuosql test@nuoadmin1 --schema hockey --user dba --password goalie \
</opt/nuodb/samples/quickstart/sql/Players.sql >& /dev/null
nuosql test@nuoadmin1 --schema hockey --user dba --password goalie \
</opt/nuodb/samples/quickstart/sql/Scoring.sql >& /dev/null
nuosql test@nuoadmin1 --schema hockey --user dba --password goalie \
</opt/nuodb/samples/quickstart/sql/Teams.sql >& /dev/null

nuosql test@nuoadmin1 --user dba --password goalie