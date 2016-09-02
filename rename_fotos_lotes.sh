# Demas esta mencionar que hace falta el paquete exiv2 para poder trabajar de aqui en adelante
# apt-get install exiv2 -y

# Agregar extension a todos los archivos (jpg) borrados por error en pyrenamer
# exiv2 -r':basename:.jpg' *

# Renombrar todos los archivos de la carpeta actual con el patron deseado en este caso: [dia-mes-ano_hora-minuto-segundos]
# exiv2 -r'%d-%m-%Y_%H%M%S' *

# Buscar y reemplazar con find (Solo un nivel) y renombrar con exiv2
# find . -maxdepth 1 -type f -iname '*.jpg' -exec exiv2 -r'%d-%m-%Y_%H%M%S' {} \;
