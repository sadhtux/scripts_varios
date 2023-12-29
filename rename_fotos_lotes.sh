# Demas esta mencionar que hace falta el paquete exiv2 para poder trabajar de aqui en adelante
# apt-get install exiv2 -y

# Agregar extension a todos los archivos (jpg) borrados por error en pyrenamer
# exiv2 -r':basename:.jpg' *

# Renombrar todos los archivos de la carpeta actual con el patron deseado en este caso: [dia-mes-ano_hora-minuto-segundos]
# exiv2 -r'%d-%m-%Y_%H%M%S' *

# Buscar y reemplazar con find (Solo un nivel) y renombrar con exiv2
# find . -maxdepth 1 -type f -iname '*.jpg' -exec exiv2 -r'%d-%m-%Y_%H%M%S' {} \;
#
# Buscar y reemplazar con find (Recursivo OJO) y renombrar con exiv2
# find . -type f -iname '*.jpg' -exec exiv2 -F -v -r'%d-%m-%Y_%H%M%S' {} \;
#
# Creamos Carpeta para el Año en el que vamos a trabajar
mkdir 2020/{Enero,Febrero,Marzo,Abril,Mayo,Junio,Julio,Agosto,Septiembre,Octubre,Noviembre,Diciembre} -p

mkdir 20{17..23}/{01_Enero,02_Febrero,03_Marzo,04_Abril,05_Mayo,06_Junio,07_Julio,08_Agosto,09_Septiembre,10_Octubre,11_Noviembre,12_Diciembre} -p -v
#
# Una vez estandarizados por la metadata movemos todas las fotos al folder del año correspondiente
find . -maxdepth 1 -type f -iname "*-2020_*" -exec mv {} 2020/ \;
#
# Ó movemos a cada mes segun corresponda en ese año (ejemplo 2020)
#
find . -maxdepth 1 -type f -iname "*-01-2020_*" -exec mv {} 2020/Enero/  -v \;
find . -maxdepth 1 -type f -iname "*-02-2020_*" -exec mv {} 2020/Febrero/  -v \;
find . -maxdepth 1 -type f -iname "*-03-2020_*" -exec mv {} 2020/Marzo/  -v \;
find . -maxdepth 1 -type f -iname "*-04-2020_*" -exec mv {} 2020/Abril/  -v \;
find . -maxdepth 1 -type f -iname "*-05-2020_*" -exec mv {} 2020/Mayo/  -v \;
find . -maxdepth 1 -type f -iname "*-06-2020_*" -exec mv {} 2020/Junio/  -v \;
find . -maxdepth 1 -type f -iname "*-07-2020_*" -exec mv {} 2020/Julio/  -v \;
find . -maxdepth 1 -type f -iname "*-08-2020_*" -exec mv {} 2020/Agosto/  -v \;
find . -maxdepth 1 -type f -iname "*-09-2020_*" -exec mv {} 2020/Septiembre/  -v \;
find . -maxdepth 1 -type f -iname "*-10-2020_*" -exec mv {} 2020/Octubre/  -v \;
find . -maxdepth 1 -type f -iname "*-11-2020_*" -exec mv {} 2020/Noviembre/  -v \;
find . -maxdepth 1 -type f -iname "*-12-2020_*" -exec mv {} 2020/Diciembre/  -v \;
#--------------------------
# Lo mismo para el año 2021
# ------------------------- 
mkdir 2021/{Enero,Febrero,Marzo,Abril,Mayo,Junio,Julio,Agosto,Septiembre,Octubre,Noviembre,Diciembre} -p
#
find . -maxdepth 1 -type f -iname "*-01-2021_*" -exec mv {} 2021/Enero/  -v \;
find . -maxdepth 1 -type f -iname "*-02-2021_*" -exec mv {} 2021/Febrero/  -v \;
find . -maxdepth 1 -type f -iname "*-03-2021_*" -exec mv {} 2021/Marzo/  -v \;
find . -maxdepth 1 -type f -iname "*-04-2021_*" -exec mv {} 2021/Abril/  -v \;
find . -maxdepth 1 -type f -iname "*-05-2021_*" -exec mv {} 2021/Mayo/  -v \;
find . -maxdepth 1 -type f -iname "*-06-2021_*" -exec mv {} 2021/Junio/  -v \;
find . -maxdepth 1 -type f -iname "*-07-2021_*" -exec mv {} 2021/Julio/  -v \;
find . -maxdepth 1 -type f -iname "*-08-2021_*" -exec mv {} 2021/Agosto/  -v \;
find . -maxdepth 1 -type f -iname "*-09-2021_*" -exec mv {} 2021/Septiembre/  -v \;
find . -maxdepth 1 -type f -iname "*-10-2021_*" -exec mv {} 2021/Octubre/  -v \;
find . -maxdepth 1 -type f -iname "*-11-2021_*" -exec mv {} 2021/Noviembre/  -v \;
find . -maxdepth 1 -type f -iname "*-12-2021_*" -exec mv {} 2021/Diciembre/  -v \;
#
#
# Para Organizar Los Videos
#
mkdir 2021/Videos -p
find . -maxdepth 1 -type f -iname "2021*" -exec mv {} 2021/Videos \;
#
# Para Organizar una Mayor cantidad de videos por carpetas segun sus meses
mkdir Videos/{2020,2021}/{Enero,Febrero,Marzo,Abril,Mayo,Junio,Julio,Agosto,Septiembre,Octubre,Noviembre,Diciembre} -p
#
# Luego movemos desde el folder del año 2021 hacia los meses segun corresponda.
#
# Para el 2020
#
find . -maxdepth 1 -type f -name '202001*' -and -iname "*.mp4" -exec mv {} Videos/2020/Enero/  -v \;
find . -maxdepth 1 -type f -name '202002*' -and -iname "*.mp4" -exec mv {} Videos/2020/Febrero/  -v \;
find . -maxdepth 1 -type f -name '202003*' -and -iname "*.mp4" -exec mv {} Videos/2020/Marzo/  -v \;
find . -maxdepth 1 -type f -name '202004*' -and -iname "*.mp4" -exec mv {} Videos/2020/Abril/  -v \;
find . -maxdepth 1 -type f -name '202005*' -and -iname "*.mp4" -exec mv {} Videos/2020/Mayo/  -v \;
find . -maxdepth 1 -type f -name '202006*' -and -iname "*.mp4" -exec mv {} Videos/2020/Junio/  -v \;
find . -maxdepth 1 -type f -name '202007*' -and -iname "*.mp4" -exec mv {} Videos/2020/Julio/  -v \;
find . -maxdepth 1 -type f -name '202008*' -and -iname "*.mp4" -exec mv {} Videos/2020/Agosto/  -v \;
find . -maxdepth 1 -type f -name '202009*' -and -iname "*.mp4" -exec mv {} Videos/2020/Septiembre/  -v \;
find . -maxdepth 1 -type f -name '202010*' -and -iname "*.mp4" -exec mv {} Videos/2020/Octubre/  -v \;
find . -maxdepth 1 -type f -name '202011*' -and -iname "*.mp4" -exec mv {} Videos/2020/Noviembre/  -v \;
find . -maxdepth 1 -type f -name '202012*' -and -iname "*.mp4" -exec mv {} Videos/2020/Diciembre/  -v \;
#
# Para el año 2021
find . -maxdepth 1 -type f -name '202101*' -and -iname "*.mp4" -exec mv {} Videos/2021/Enero/  -v \;
find . -maxdepth 1 -type f -name '202102*' -and -iname "*.mp4" -exec mv {} Videos/2021/Febrero/  -v \;
find . -maxdepth 1 -type f -name '202103*' -and -iname "*.mp4" -exec mv {} Videos/2021/Marzo/  -v \;
find . -maxdepth 1 -type f -name '202104*' -and -iname "*.mp4" -exec mv {} Videos/2021/Abril/  -v \;
find . -maxdepth 1 -type f -name '202105*' -and -iname "*.mp4" -exec mv {} Videos/2021/Mayo/  -v \;
find . -maxdepth 1 -type f -name '202106*' -and -iname "*.mp4" -exec mv {} Videos/2021/Junio/  -v \;
find . -maxdepth 1 -type f -name '202107*' -and -iname "*.mp4" -exec mv {} Videos/2021/Julio/  -v \;
find . -maxdepth 1 -type f -name '202108*' -and -iname "*.mp4" -exec mv {} Videos/2021/Agosto/  -v \;
find . -maxdepth 1 -type f -name '202109*' -and -iname "*.mp4" -exec mv {} Videos/2021/Septiembre/  -v \;
find . -maxdepth 1 -type f -name '202110*' -and -iname "*.mp4" -exec mv {} Videos/2021/Octubre/  -v \;
find . -maxdepth 1 -type f -name '202111*' -and -iname "*.mp4" -exec mv {} Videos/2021/Noviembre/  -v \;
find . -maxdepth 1 -type f -name '202112*' -and -iname "*.mp4" -exec mv {} Videos/2021/Diciembre/  -v \;
#
#
# Buscamos y eliminamos Carpetas y archivos vacíos (en 0)
#
find . -type f -empty -delete
find . -type d -empty -delete
#
# The End
