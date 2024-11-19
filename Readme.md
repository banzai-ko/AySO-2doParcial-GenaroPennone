# AySO 2do Parcial 

Nombre: Genaro        
Apellido: Pennone       
Legajo: 117920      
División: 316       

# Uso recomentado de este repositorio


1.En el quipo HOST clonar repo: 
```bash
$ git clone https://github.com/banzai-ko/AySO-2doParcial-GenaroPennone
```
2. Acceder carpeta '2doParcial' y ejecutar 

```bash
cd AySO-2doParcial-GenaroPennone/2doParcial
$ ./1-runVms.sh
```

> **Nota**: dejo una llave ya creada para fines demostrativos, esta llave no tiene valor mas allá de este repositorio. Tambien es posible colocar en la carpeta 'keys' una llave ssh válida llamada 'key' y 'key.pub'

2. Acceder a las VMs

### Vagrant_web
``` bash
$ cd ../VMs/vagrant_web
$ vagrant ssh
```
Dentro de la VM el repositorio se clona automaticamente
```bash
$ cd AySO-2doParcial-GenaroPennone/2doParcial
```

### Managed Node
``` bash
$ cd ../VMs/managed_node
$ vagrant ssh
```
#### Ejecutando los scripts
Observaciones:    
 Punto A: usé parted en lugar de fdisk, necesita permisos de super usuario
 Punto B: la llave especificada en el archivo ansible/hosts.ini es "key"(/home/vagrant/.ssh/key), el nombre se corresponde con el archivo VagrantFile.
 Punto C: el puerto 8080 esta expuesto en el archivo de configuración Vagrantfile, permite el acceso externo. IP_HOST:8080



``` bash
$ sudo ./puntoa.sh 
$ ./puntob.sh
$ ./puntoc.sh
```

## Esquema 
En la carpeta Vms se adjuntan los Archivos de configuración de vagrant
| Nombre        |         Función         |       IP       | Puerto Web | SSH  |
|---------------|-------------------------|----------------|------------|------|
| vagrant_web   | Ansible Controller Node | 192.168.56.8   | 8080       | 8022 |
| managed_node  | Ansible Managed Node    | 192.168.56.9   | 8081       | 8023 |

