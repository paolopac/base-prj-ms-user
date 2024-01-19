Install containair MongoDB:
  go to dockerfile dir
  docker build -t mongousers:0.1 .

Run container:
docker run -d -p 37017:37016 mongousers:0.1

Entrare nel container mongousers:0.1:
docker exec -ti id_container bash

Si modifichi la configurazione:
cd etc
nano mongodb.conf
port = 37016 // modificare la porta
bind_ip = 0.0.0.0 // modificare la bind affinche accetti request provenienti esse, dall'esterno
auth = true //attivizione sicurezza
Save
exit

Si riavvii il container:
docker stop id_container
Recupero id_contanier:
docker ps -a
Avvio contanier:
docker start id_container

Test request:
docker exec -ti id_container bash
mongo --port 37016
exit

Test request:
mongo --port 37017
exit

Entrare nel mongo presente nel container:
docker exec -ti id_container bash
mongo --port 37016

Creazione utente amministratore dei databases:
use admin

db.createUser({
  user:"michaelfarady",
  pwd:"20210101Pa!",
    roles:[
      {
        role : "userAdminAnyDatabase", db: "admin"
      }
    ]
})

exit

Creazione utenza utilizzata essa, dal microsrvizio users-web-service per accedere al db:
Si acceda dalla macchina al database admin del mongodb presente esso stesso, nel container:
mongo -u michaelfarady --authenticationDatabase admin -p --port 37017
use admin

db.createUser({
  user:"usersmicroservice",
  pwd:"20210810Ms!",
    roles:[
      {
        role : "readWrite", db: "users"
      }
    ]
})

exit