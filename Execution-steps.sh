#STEP 1:

#RUNNING THE AP CONTAINER OF NUODB:
 docker-compose -f test.yaml up -d

#CHECKING THE CONTAINER STATUS:
 docker-compose -f test.yaml ps

#STEP2
# RUNNING THE TE AND SM LAYERS OF NUODB
docker exec -itd nuoadmin1 nuodocker --api-server nuoadmin1:8888 start sm --db-name test --server-id nuoadmin1 --dba-user dba --dba-password goalie
docker exec -itd nuoadmin1 nuodocker --api-server nuoadmin1:8888 start te --db-name test --server-id nuoadmin1

#STEP3:
#CHECKING THE STATUS OF THE SERVER AND DATABASE
docker exec -it advanced-databases_nuoadmin1_1 nuocmd show domain

#STEP 4:
#OPENING A BASH SHELL AND USING NUOSQL CMD -NATIVE CLIENT
docker exec -it nuoadmin1 bash
nuosql test@nuoadmin1 --user dba --password goalie

#STEP 5:
#PERFORMING CRUD



#STEP 6:
#REMOVING CONTAINERS AND VOLUMES:
docker-compose -f test.yaml down
docker volume rm nuoadmin-raft-1 test-arch-vol-1

