```bash
# Crear grupo
sudo groupadd -g 1390 GRP394142

# Crear usuario
sudo userdd -u 1290 -g GRP394142 -d /home/usuarios/USU394142 USU394142

#Borrar grupo
sudo groupdel GRP394142

#Borrar usuario
sudo userdel USU394142
```
