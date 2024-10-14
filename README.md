
# WepApiWeather

API que proporciona información del clima y noticias de una ciudad específica. Utiliza datos de diferentes servicios para ofrecer un acceso centralizado a las condiciones meteorológicas y noticias locales.

## Descripción

WepApiWeather es una API diseñada para permitir a los usuarios obtener información sobre el clima de una ciudad, así como noticias locales relevantes. Esta aplicación busca proporcionar información completa y actualizada mediante una interfaz RESTful.

## Características

- **Información del clima**: Datos en tiempo real sobre temperatura, humedad, velocidad del viento y otras condiciones climáticas.
- **Noticias locales**: Resumen de noticias actuales relacionadas con la ciudad seleccionada.
- **Desarrollado en C#**: Utilizando ASP.NET Core para la API y T-SQL para gestionar la base de datos.

## Requisitos previos

Antes de poder ejecutar este proyecto, asegúrate de tener instaladas las siguientes herramientas:

- .NET Core SDK
- SQL Server

## Instalación

1. Clona el repositorio:

   ```bash
   git clone https://github.com/OsmanJimenez/WepApiWeather.git
   ```

2. Navega a la carpeta del proyecto:

   ```bash
   cd WepApiWeather
   ```

3. Restaura los paquetes NuGet:

   ```bash
   dotnet restore
   ```

4. Configura la base de datos usando los scripts de SQL en la carpeta `Scripts_Sql_Database`.

5. Ejecuta la aplicación:

   ```bash
   dotnet run
   ```

   Esto iniciará la API en el puerto predeterminado.

## Uso

Una vez que la API esté en funcionamiento, puedes utilizar herramientas como Postman para hacer peticiones HTTP y obtener información del clima o noticias para una ciudad específica.

Ejemplos de endpoints:

- `GET /api/weather/{city}`: Obtiene la información climática de la ciudad especificada.
- `GET /api/news/{city}`: Obtiene las noticias locales de la ciudad especificada.

## Contribuir

Si deseas contribuir a este proyecto:

1. Haz un fork del repositorio.
2. Crea una nueva rama (`git checkout -b feature/nueva-feature`).
3. Realiza los cambios necesarios y haz commit (`git commit -am 'Añadir nueva feature'`).
4. Haz push a la rama (`git push origin feature/nueva-feature`).
5. Abre un Pull Request.

## Licencia

Este proyecto está bajo la licencia MIT. Puedes encontrar más detalles en el archivo `LICENSE` del proyecto.
