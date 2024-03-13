# API de Pokemon

Esta API de Pokemon te permite acceder a información detallada sobre diferentes Pokemon. Puedes obtener datos como el nombre, tipo, habilidades y estadísticas de cada Pokemon.

## Instalación

1. Clona este repositorio en tu máquina local.
2. Navega hasta el directorio del proyecto.
3. Ejecuta el siguiente comando para instalar las dependencias:

  ```shell
  bundle install
  ```

4. Ejecuta el siguiente comando para crear la base de datos:

  ```shell
  rails db:create
  ```

5. Ejecuta el siguiente comando para ejecutar las migraciones:

  ```shell
  rails db:migrate
  ```

## Uso

1. Inicia el servidor ejecutando el siguiente comando:

  ```shell
  rails s
  ```

2. Utilizaremos Postman para realizar las peticiones a la API. Abre Postman y crea una nueva petición a la siguiente URL:

  ```shell
  http://localhost:3000
  ```