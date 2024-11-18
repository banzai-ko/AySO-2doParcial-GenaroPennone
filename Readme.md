# AySO 2do Parcial 

Nombre: Genaro        
Apellido: Pennone       
Legajo: 117920      
División: 316       

# Uso recomentado de este repositorio

1. Colocar en la carpeta 'keys' una llave ssh válida llamada 'key' y 'key.pub'
o crear una, por ej.,
```
$ ssh-keygen -t ed25519 -C "demo@example.com" -f ~/.ssh/key

```

Acceder carpeta '2do parcial' y ejecutar 

```
./1-runVms.sh
```
si se quiere acceder a la VM para utilizar los scripts:

### Vagrant_web
```
$ cd ../VMs/vagrant_web
$ vagrant ssh
```
### Vagrant_web
```
$ cd ../VMs/managed_node
$ vagrant ssh
```

## Esquema 
En la carpeta Vms se adjuntan los Archivos de configuración de vagrant

| Nombre         | Función          | IP             |
|----------------|------------------|----------------|
| vagrant_web    | Controller Node  | 192.168.53.8   |
| managed_node   | Managed Node     | 192.168.53.9   |

