# Prueba técnica: Proyecto de Transacciones

Aplicación web con un frontend en React y un
backend en Java con Spring Boot, siguiendo muy buenas prácticas de desarrollo de software. La aplicación se ejecuta dentro de contenedores Docker.


## Componentes
Este proyecto está compuesto por un **microservicio** desarrollado en **Java Spring Boot** y un **frontend** en **React**. Ambos servicios están dockerizados para facilitar su despliegue en contenedores. 

### 1. **Backend (Java Spring Boot)**
   - El backend es un microservicio RESTful desarrollado en **Java** utilizando el framework **Spring Boot**.
   - Expone una API para gestionar transacciones y cuentas (ejemplo de uso financiero o bancario).
   - Está configurado para escuchar en el puerto `8080`.
   - Puedes ver la documentación del API en http://localhost:8080/swagger-ui.

### 2. **Frontend (React)**
   - El frontend está desarrollado en **React** (Usando `Vite`).
   - Consume la API proporcionada por el microservicio en el backend.
   - Se ejecuta en el puerto `8081` por defecto.

## Tecnologías Utilizadas

- **Backend (Java)**
  - **Java 21**
  - **Spring Boot**
  - **Maven** (como herramienta de construcción)
  - **Docker** para la creación de contenedores
  - **PostgreSQL** para la base de datos

- **Frontend (React)**
  - **React** (con `Vite`)
  - **Docker** para la creación de contenedores

- **Docker**:
  - Utilizamos Docker y **docker-compose** para gestionar ambos servicios (frontend y backend) de manera eficiente y simplificada.

## Requerimientos

- **Docker**: Asegúrate de tener Docker instalado en tu máquina.
  - Puedes descargar Docker [aquí](https://www.docker.com/products/docker-desktop).

- **Docker Compose**: Viene incluido con Docker Desktop.

## Cómo Ejecutar el Proyecto

### Paso 1: Clonar el repositorio

Clona este repositorio en tu máquina local:

### Paso 2: Construir y levantar los contenedores con Docker Compose
Desde la raíz del proyecto (donde se encuentra el archivo docker-compose.yml), ejecuta:

- docker-compose up --build

Este comando realizará las siguientes acciones:

- Construirá las imágenes Docker para los diferentes servicios servicios: base de datos,backend y frontend.

- Levantará los contenedores correspondientes y los expondrá en los puertos:

  - Backend: http://localhost:8080
  - Frontend: http://localhost:8081

### Paso 3: Acceder a la aplicación
Una vez que los contenedores estén en funcionamiento:

Accede al frontend en tu navegador en http://localhost:8081.
(El frontend estará interactuando con el microservicio backend, el cual se ejecuta en http://localhost:8080).

## Aclaración para validaciones de Rate Limiting

Si bien el reto solicita **"Implementar un límite de 3 request por minuto por cliente para evitar abusos del sistema."**, el límite se aumentó a **100** para brindar una experiencia menos restrictiva y con el objetivo de presentar una demo fluida.
