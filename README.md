# Dockerfile para generar imagenes con logstash instalado

## Uso

```
docker run -t -i -v /path/to/logstash.conf:/etc/logstash/logstash.conf karmapulse/logstash
```

De este modo estaremos corriendo un contenedor con logstash corriendo basado en las cofinguraciones en **/etc/logstash/logstash.conf**.

Para dar acceso al contedor a archivos en el host para que sirven de entrada para logstash debemos agregar el volumen al contenedor, de las siguiente manera.

```
docker run -t -i -v /path/to/logstash.conf:/etc/logstash/logstash.conf -v /home/.bash_history:/data/bash_history:ro karmapulse/logstash
```

En este ejemplo estamos adjuntando al volumen el archivo .bash_history e indicando que sera de solo lectura.
