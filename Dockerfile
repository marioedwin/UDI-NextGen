# 1. ESPECIFICA LA IMAGEN BASE
# Usamos la imagen oficial de Nginx, que es un servidor web muy popular y ligero.
FROM nginx:alpine

# 2. DEFINIR EL DIRECTORIO DE TRABAJO
# El directorio por defecto para los archivos web en Nginx es /usr/share/nginx/html.
# Establecemos el directorio de trabajo para que el comando COPY sea más simple.
WORKDIR /usr/share/nginx/html

# 3. COPIAR ARCHIVOS
# Copia nuestro archivo index.html del directorio actual (host) al directorio de Nginx dentro de la imagen.
# Esto reemplazará la página de bienvenida por defecto de Nginx.
COPY index.html .

# 4. EXPOSICIÓN DE PUERTO (Documentación)
# Indica que el contenedor escuchará en el puerto 80. 
# Esto es informativo, no abre el puerto en el host. Lo abriremos con 'docker run -p'.
EXPOSE 80

# 5. COMANDO DE INICIO
# Nginx ya tiene un comando de inicio por defecto (CMD), por lo que no necesitamos especificar uno.
# El servidor Nginx se inicia automáticamente al lanzar el contenedor.