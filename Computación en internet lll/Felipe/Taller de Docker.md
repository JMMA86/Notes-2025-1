![[TallerDocker.pdf]]


# Componente 1
Se instala el Docker Desktop y el WSL settings

Se crea el DockerFile de la base de datos

![[Pasted image 20250205143510.png]]
![[Pasted image 20250205143616.png]]

![[Pasted image 20250205143653.png]]

![[Pasted image 20250205143750.png]]

Acceso a la base de datos desde PHP Admin:
![[Pasted image 20250205143859.png]]



# Arquitectura del MicroServicio

Creación de imagen
![[Pasted image 20250205175446.png]]

Despliegue del contenedor
![[Pasted image 20250205175503.png]]


# Postman

Ejemplo 1: Método POST
![[Pasted image 20250205180234.png]]

Ejemplo 2: Método GET
![[Pasted image 20250205180938.png]]

Ejemplo 3: Método GET
![[Pasted image 20250205181032.png]]

Ejemplo 4: Método PUT
![[Pasted image 20250205221220.png]]

Ejemplo 5: Método Delete
![[Pasted image 20250205221330.png]]

Resumen:
![[Pasted image 20250205221351.png]]

En la vista de PhpAdmin se puede evidenciar cada inyeccion hecha en POSTMAN y se evidencia el GET,PUT,POST,DELETE.

![[Pasted image 20250205221856.png]]

## DockerFiles

BD
```Dockerfile
FROM mysql:8.0

ENV MYSQL_ROOT_PASSWORD=123

ENV MYSQL_DATABASE=supermarket_db

ENV MYSQL_USER=supermarket

ENV MYSQL_PASSWORD=2021

EXPOSE 3306
```

Supermarket_MS
```Dockerfile
FROM python:3.11

ENV PYTHONUNBUFFERED 1

RUN mkdir /code

WORKDIR /code

COPY requirements.txt /code/

RUN pip install -r requirements.txt

COPY . /code/

ENV URL=0.0.0.0:4000

CMD ["sh", "-c", "python manage.py makemigrations supermarket_ms && python manage.py migrate && python manage.py runserver $URL"]
```


Comandos:
(entornoVirtual) PS C:\Icesi\Semestre7\Computacion en internet 3\Taller de Docker\supermarket_ms\supermarket_db> docker build -t supermarket_db .
[+] Building 60.1s (5/5) FINISHED                                                                                                                docker:desktop-linux
 => [internal] load build definition from Dockerfile                                                                                                             0.0s
 => => transferring dockerfile: 183B                                                                                                                             0.0s
 => [internal] load metadata for docker.io/library/mysql:8.0                                                                                                     1.3s
 => [internal] load .dockerignore                                                                                                                                0.0s
 => => transferring context: 2B                                                                                                                                  0.0s
 => [1/1] FROM docker.io/library/mysql:8.0@sha256:4f33388ab0a152ca309eeb70cd2e4a9a8989d5006ec2a4890d883afbffd6be4a                                              58.7s
 => => resolve docker.io/library/mysql:8.0@sha256:4f33388ab0a152ca309eeb70cd2e4a9a8989d5006ec2a4890d883afbffd6be4a                                               0.0s
 => => sha256:4f33388ab0a152ca309eeb70cd2e4a9a8989d5006ec2a4890d883afbffd6be4a 2.60kB / 2.60kB                                                                   0.0s 
 => => sha256:04faa32c7d292cc0057013bb78369f1c5d380236fe3315553ac8402883bb3a5e 6.74kB / 6.74kB                                                                   0.0s
 => => sha256:2c0a233485c3a7b6cab556a9a9c2916ca9a3afc8c46097ddfbe0af4fe120a50c 49.10MB / 49.10MB                                                                34.0s
 => => sha256:d87e05573c29e58583900bad982c70dfd740f18f2940e2d90a04ddf0f150de9b 983.00kB / 983.00kB                                                               0.9s 
 => => sha256:06a422efa571e8f144ccef44d65537fd47d48647d39cdedc1a2e7a1537e8516e 3.04kB / 3.04kB                                                                   0.0s 
 => => sha256:fb027c65a85cfe71e10cb49319c0786a090eb22468ca3422c214c88de3ae3c20 884B / 884B                                                                       0.7s 
 => => sha256:7d202bd608a9277c6e7d5b8a3c64721189ca1b2111f7d4d1a397d3721377a045 6.90MB / 6.90MB                                                                   5.9s
 => => sha256:930324cdd290e662f38af3357cd4ee1074f2de3ff93a94612b89e13c0280c6bd 2.61kB / 2.61kB                                                                   1.5s
 => => sha256:441e29354b231ddcabe659aa742344c62a732df1686c5e94e10ca6251f46dac3 333B / 333B                                                                       1.9s
 => => sha256:4f0710d03b24e6b1296bc15ee3a02c41eeab0d4b813162d8fbcb94185b5fa1be 49.64MB / 49.64MB                                                                32.9s
 => => sha256:ead7d3dd9cc0be4808627c6606ef6da57141cdf4bbe5d5323416f6cb5590ef69 316B / 316B                                                                       6.2s
 => => sha256:55d2712d2c86d5b7e63b7f526c57de19ccb857baeae7367735e0fe53a32287be 125.30MB / 125.30MB                                                              49.7s
 => => sha256:4aaa23a8b4131bf3de8d4b0589ba4573af124414a3d60c6879390bbadb421a4e 5.33kB / 5.33kB                                                                  33.9s
 => => sha256:84ba6b75f842bbe65101567089f251f71d006273613902c3094e269f486e55af 122B / 122B                                                                      34.4s
 => => extracting sha256:2c0a233485c3a7b6cab556a9a9c2916ca9a3afc8c46097ddfbe0af4fe120a50c                                                                        2.1s
 => => extracting sha256:fb027c65a85cfe71e10cb49319c0786a090eb22468ca3422c214c88de3ae3c20                                                                        0.0s
 => => extracting sha256:d87e05573c29e58583900bad982c70dfd740f18f2940e2d90a04ddf0f150de9b                                                                        0.0s 
 => => extracting sha256:7d202bd608a9277c6e7d5b8a3c64721189ca1b2111f7d4d1a397d3721377a045                                                                        0.2s 
 => => extracting sha256:930324cdd290e662f38af3357cd4ee1074f2de3ff93a94612b89e13c0280c6bd                                                                        0.0s 
 => => extracting sha256:441e29354b231ddcabe659aa742344c62a732df1686c5e94e10ca6251f46dac3                                                                        0.0s 
 => => extracting sha256:4f0710d03b24e6b1296bc15ee3a02c41eeab0d4b813162d8fbcb94185b5fa1be                                                                        1.1s 
 => => extracting sha256:ead7d3dd9cc0be4808627c6606ef6da57141cdf4bbe5d5323416f6cb5590ef69                                                                        0.0s 
 => => extracting sha256:55d2712d2c86d5b7e63b7f526c57de19ccb857baeae7367735e0fe53a32287be                                                                        8.7s 
 => => extracting sha256:4aaa23a8b4131bf3de8d4b0589ba4573af124414a3d60c6879390bbadb421a4e                                                                        0.0s 
 => => extracting sha256:84ba6b75f842bbe65101567089f251f71d006273613902c3094e269f486e55af                                                                        0.0s 
 => exporting to image                                                                                                                                           0.0s 
 => => exporting layers                                                                                                                                          0.0s 
 => => writing image sha256:c0eb01e92dd38061721c7f5c518541d3392c987e42ebd34036f00417da040f2e                                                                     0.0s 
 => => naming to docker.io/library/supermarket_db                                                                                                                0.0s 

 2 warnings found (use docker --debug to expand):
 - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "MYSQL_ROOT_PASSWORD") (line 2)
 - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "MYSQL_PASSWORD") (line 5)
(entornoVirtual) PS C:\Icesi\Semestre7\Computacion en internet 3\Taller de Docker\supermarket_ms\supermarket_db> docker run -d -t -i -p 3306:3306 --name supermarket_db supermarket_db
4d452d8cf4506511a5c572bebbf41f9c8c3831307b94846d14a9758ba51bb209
(entornoVirtual) PS C:\Icesi\Semestre7\Computacion en internet 3\Taller de Docker\supermarket_ms\supermarket_db> docker run --name phpmyadmin -d --link supermarket_db:db -p 8081:80 phpmyadmin
Unable to find image 'phpmyadmin:latest' locally
latest: Pulling from library/phpmyadmin
c29f5b76f736: Pull complete
814b6ecb84b0: Pull complete
a4e58aa84c36: Pull complete
b545bb7ff18e: Pull complete
8ca47539e139: Pull complete
ea823f46cc3c: Pull complete
bcbecb454049: Pull complete
68d70c2b9fc9: Pull complete
b9903ecbcf0b: Pull complete
f473bcbd0e44: Pull complete
d8b79b64a9d5: Pull complete
5c36aa47b3f5: Pull complete
c6834909cd19: Pull complete
4f4fb700ef54: Pull complete
35999afeb699: Pull complete
f57f1f7af98c: Pull complete 
5b0630234152: Pull complete
d5caff24cd44: Pull complete
f77dbc49b343: Pull complete
ead5e537482f: Pull complete
Digest: sha256:b8e9de0186fe7e12e3a9565432c9faf6e8f0ec0f78f07bc3625910fd130afb99
Status: Downloaded newer image for phpmyadmin:latest
0c3b08619528caf985888408f200fa5ab9073042f3250279f3e0ce3e1706d72c
(entornoVirtual) PS C:\Icesi\Semestre7\Computacion en internet 3\Taller de Docker\supermarket_ms\supermarket_db> cd ..
(entornoVirtual) PS C:\Icesi\Semestre7\Computacion en internet 3\Taller de Docker\supermarket_ms>  docker build -t supermarket_ms .
[+] Building 98.5s (12/12) FINISHED                                                                                                              docker:desktop-linux
 => [internal] load build definition from Dockerfile                                                                                                             0.0s
 => => transferring dockerfile: 346B                                                                                                                             0.0s 
 => [internal] load metadata for docker.io/library/python:3.11                                                                                                   1.8s 
 => [auth] library/python:pull token for registry-1.docker.io                                                                                                    0.0s 
 => [internal] load .dockerignore                                                                                                                                0.0s
 => => transferring context: 2B                                                                                                                                  0.0s 
 => [1/6] FROM docker.io/library/python:3.11@sha256:14b4620f59a90f163dfa6bd252b68743f9a41d494a9fde935f9d7669d98094bb                                            82.0s 
 => => resolve docker.io/library/python:3.11@sha256:14b4620f59a90f163dfa6bd252b68743f9a41d494a9fde935f9d7669d98094bb                                             0.0s 
 => => sha256:a492eee5e55976c7d3feecce4c564aaf6f14fb07fdc5019d06f4154eddc93fde 48.48MB / 48.48MB                                                                14.2s 
 => => sha256:35af2a7690f2b43e7237d1fae8e3f2350dfb25f3249e9cf65121866f9c56c772 64.39MB / 64.39MB                                                                53.5s 
 => => sha256:78a74fb73bfb12a8641cc50cbc82f57c610aaafa73b628896cb71a475497922c 6.18kB / 6.18kB                                                                   0.0s 
 => => sha256:fa951df28e3fef5b5736bf5d0c285f91e7c8d1c814bfc3784c1a4b3d216b39ee 2.33kB / 2.33kB                                                                   0.0s 
 => => sha256:32b550be6cb62359a0f3a96bc0dc289f8b45d097eaad275887f163c6780b4108 24.06MB / 24.06MB                                                                15.7s 
 => => sha256:14b4620f59a90f163dfa6bd252b68743f9a41d494a9fde935f9d7669d98094bb 9.08kB / 9.08kB                                                                   0.0s 
 => => extracting sha256:a492eee5e55976c7d3feecce4c564aaf6f14fb07fdc5019d06f4154eddc93fde                                                                        3.4s 
 => => sha256:7576b00d9bb10cc967bb5bdeeb3d5fa078ac8800e112aa03ed15ec199662d4f7 211.33MB / 211.33MB                                                              71.3s 
 => => sha256:3fd67c6ea72187077ad551000d527ae7c24d461e7c9944dc74312e3afac50fb4 6.16MB / 6.16MB                                                                  19.7s
 => => extracting sha256:32b550be6cb62359a0f3a96bc0dc289f8b45d097eaad275887f163c6780b4108                                                                        0.9s 
 => => sha256:dcaa1b9153e7d7edb7678e2ef9933b57b19a97ec9bce49dc8630911aa18664d1 24.31MB / 24.31MB                                                                35.6s
 => => sha256:8630e3071c887d36db54d1924e21eee3419c5afc9874a068e03fb7978b2fb7d8 249B / 249B                                                                      36.2s
 => => extracting sha256:35af2a7690f2b43e7237d1fae8e3f2350dfb25f3249e9cf65121866f9c56c772                                                                        4.0s
 => => extracting sha256:7576b00d9bb10cc967bb5bdeeb3d5fa078ac8800e112aa03ed15ec199662d4f7                                                                        8.6s
 => => extracting sha256:3fd67c6ea72187077ad551000d527ae7c24d461e7c9944dc74312e3afac50fb4                                                                        0.4s
 => => extracting sha256:dcaa1b9153e7d7edb7678e2ef9933b57b19a97ec9bce49dc8630911aa18664d1                                                                        1.4s 
 => => extracting sha256:8630e3071c887d36db54d1924e21eee3419c5afc9874a068e03fb7978b2fb7d8                                                                        0.0s 
 => [internal] load build context                                                                                                                                2.7s 
 => => transferring context: 48.94MB                                                                                                                             2.6s 
 => [2/6] RUN mkdir /code                                                                                                                                        0.7s 
 => [3/6] WORKDIR /code                                                                                                                                          0.0s 
 => [4/6] COPY requirements.txt /code/                                                                                                                           0.0s 
 => [5/6] RUN pip install -r requirements.txt                                                                                                                   12.3s 
 => [6/6] COPY . /code/                                                                                                                                          0.9s 
 => exporting to image                                                                                                                                           0.6s 
 => => exporting layers                                                                                                                                          0.5s 
 => => writing image sha256:27f312a1c32a1011eafd099a65f61491e6fb216051dd40fdfef55fea800d686d                                                                     0.0s 
 => => naming to docker.io/library/supermarket_ms                                                                                                                0.0s 

 1 warning found (use docker --debug to expand):
 - LegacyKeyValueFormat: "ENV key=value" should be used instead of legacy "ENV key value" format (line 2)
(entornoVirtual) PS C:\Icesi\Semestre7\Computacion en internet 3\Taller de Docker\supermarket_ms> docker run -p 4000:4000 -e DB_HOST=supermarket_db -e DB_PORT=3306 -e DB_USER=supermarket -e DB_PASSWORD=2021 -e DB_NAME=supermarket_db -e URL=0.0.0.0:4000 --link supermarket_db:db supermarket_ms


docker run -p 4000:4000 -e DB_HOST=supermarket_db -e DB_PORT=3306 -e DB_USER=supermarket -e DB_PASSWORD=2021 -e DB_NAME=supermarket_db -e URL=0.0.0.0:4000 --link supermarket_db:db supermarket_ms