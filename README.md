El archivo common instala los paquetes comunes a todas las VM.
El archivo main instala los paquetes del servidor server20, el cual es la VM que corre Consul y HAProxy.
El archivo loadServer36 instala los paquetes de la VM donde corre Artillery.

server20: Máquina virtual donde corre consul y HAproxy. IP: 192.168.100.20
service31 y service 32: VMs donde corren los microservicios. IP: 192.168.100.31 y IP: 192.168.100.32
loadServer36: VM donde corre Artillery. IP: 192.168.100.36

Carpeta consulService: Carpeta donde están los scripts .js que corren los microservicios.
haproxy.cfg: Archivo de configuración de HAproxy. Ahí se indica al proxy donde buscar los microservicios, en este caso se indica el nombre del microservicio y la IP de servidor consul.
