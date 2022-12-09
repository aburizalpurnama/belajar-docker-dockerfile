# FROM Instruction
docker build -t rizalpurnama/from from

# RUN Instruction
docker build -t rizalpurnama/run run --progress plain

# CMD Instruction
docker build -t rizalpurnama/command command --progress plain --no-cache

docker image inspect rizalpurnama/command

docker container create --name command rizalpurnama/command:latest

docker container start command

docker container logs command

# LABEL Instruction
docker build -t rizalpurnama/label label

docker image inspect rizalpurnama/label

# ADD Instruction
docker build -t rizalpurnama/add add

docker container create --name add rizalpurnama/add:latest

docker container start add

docker container logs add

# COPY Instruction
docker build -t rizalpurnama/copy copy

docker container create --name copy rizalpurnama/copy:latest

docker container start copy

docker container logs copy

# IGNORE Instruction
docker build -t rizalpurnama/ignore ignore

docker container create --name ignore rizalpurnama/ignore:latest

docker container start ignore

docker container logs ignore

# EXPOSE Instruction
docker build -t rizalpurnama/expose expose

docker container create --name expose -p 8089:8089 rizalpurnama/expose:latest

docker image inspect rizalpurnama/expose

docker container start expose

docker container logs expose

# ENV Instruction
docker build -t rizalpurnama/env env

docker container create --name env -p 8889:8889 -e APP_PORT=8889 rizalpurnama/env:latest

docker container start env

# VOLUME Instruction
docker build -t rizalpurnama/volume volume

docker container create --name volume -p 8889:8889 -e APP_PORT=8889 rizalpurnama/volume:latest
docker container create --name volume -e APP_PORT=8889 -p 8889:8889 rizalpurnama/volume:latest

docker container start volume

# WORKDIR Instruction
docker build -t rizalpurnama/workdir workdir

docker container create --name workdir -e APP_PORT=8889 -p 8889:8889 rizalpurnama/workdir:latest

docker container start workdir

# USER Instruction
docker build -t rizalpurnama/user user

docker container create --name user -p 8089:8089 rizalpurnama/user:latest

docker container start user

# ARG Instruction
docker build -t rizalpurnama/arg arg --build-arg app=rizal

docker container create --name arg -p 8089:8089 rizalpurnama/arg:latest

docker container start arg

docker container logs arg

# HEALTHCHECK Instruction
docker build -t rizalpurnama/healthcheck healthcheck

docker container create --name healthcheck -p 8089:8089 rizalpurnama/healthcheck:latest

docker container start healthcheck

docker ps

# ENTRYPOINT Instruction
docker build -t rizalpurnama/entrypoint entrypoint

docker container create --name entrypoint -p 8089:8089 rizalpurnama/entrypoint:latest

docker container start entrypoint

docker ps

# MULTISTAGE Instruction
docker build -t rizalpurnama/multistage multistage

docker container create --name multistage -p 8089:8089 rizalpurnama/multistage:latest

docker container start multistage

docker ps