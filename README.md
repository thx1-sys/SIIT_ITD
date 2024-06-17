# Sistema de Información Integral - Instituto Tecnológico de Durango

## Descripción

Este proyecto es un Sistema de Información Integral desarrollado para el Instituto Tecnológico de Durango. Está diseñado para facilitar la gestión de información académica y administrativa dentro de la institución. Incluye módulos para la gestión de estudiantes, profesores, cursos, calificaciones, y más.

## Características

- Gestión de estudiantes: Registro, actualización y consulta de información estudiantil.
- Gestión de profesores: Registro y actualización de información de profesores.
- Gestión de cursos: Creación, actualización y asignación de cursos.
- Gestión de calificaciones: Registro y consulta de calificaciones.
- Módulo de reportes: Generación de reportes personalizados.
- Autenticación y autorización de usuarios: Control de acceso basado en roles.
- Interfaz de usuario amigable y responsiva.

## Requisitos del Sistema

- **Backend**: Node.js, Express
- **Base de Datos**: MySQL
- **Frontend**: Vite (con React.js)
- **Otros**: Docker (opcional para despliegue)

## Instalación

### Prerrequisitos

- Node.js (v14 o superior)
- MySQL
- Git

### Pasos

1. Clonar el repositorio:
    ```bash
    git clone https://github.com/usuario/sistema-informacion-integral.git
    cd sistema-informacion-integral
    ```

2. Instalar las dependencias del backend:
    ```bash
    cd backend
    npm install
    ```

3. Instalar las dependencias del frontend:
    ```bash
    cd ../frontend
    npm install
    ```

4. Configurar las variables de entorno:
    - Crear un archivo `.env` en la carpeta `backend` con las siguientes variables:
        ```
        PORT=3000
        DB_HOST=localhost
        DB_USER=tu_usuario
        DB_PASSWORD=tu_contraseña
        DB_NAME=nombre_base_datos
        ```

5. Crear y poblar la base de datos:
    - Asegúrate de que tu servidor MySQL esté corriendo.
    - Ejecuta los scripts SQL para crear y poblar la base de datos que se encuentran en la carpeta `database` del proyecto.

6. Iniciar el servidor backend:
    ```bash
    cd backend
    npm start
    ```

7. Iniciar el servidor frontend:
    ```bash
    cd ../frontend
    npm run dev
    ```

8. Acceder a la aplicación:
    - Abre tu navegador y navega a `http://localhost:3000` para acceder a la aplicación.

## Contribución

Las contribuciones son bienvenidas. Por favor, sigue los pasos a continuación para contribuir:

1. Haz un fork del repositorio.
2. Crea una nueva rama (`git checkout -b feature/nueva-caracteristica`).
3. Realiza tus cambios y haz commit (`git commit -am 'Agrega nueva característica'`).
4. Sube los cambios a tu rama (`git push origin feature/nueva-caracteristica`).
5. Crea un Pull Request.

## Licencia

Este proyecto está licenciado bajo la Licencia MIT. Consulta el archivo `LICENSE` para más detalles.

---

**Contacto**: Para más información, contacta al equipo de desarrollo en [correo@example.com](mailto:correo@example.com).
