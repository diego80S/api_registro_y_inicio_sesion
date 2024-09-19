# Evidencia: Diseño y desarrollo de servicios web - caso. GA7-220501096-AA5-EV01.

## Descripción

Este proyecto es una API REST para gestionar el registro e inicio de sesión de usuarios, utilizando Ruby on Rails y SQLite. El sistema permite a los usuarios registrarse con un nombre de usuario y contraseña, y luego autenticarse para acceder a servicios protegidos.

## Características

- Registro de nuevos usuarios
- Inicio de sesión con validación de credenciales
- Hashing de contraseñas usando `bcrypt`
- Manejo de errores en la autenticación y registro

## Requisitos previos

Antes de poder ejecutar este proyecto localmente, asegúrate de tener lo siguiente instalado:

- [Ruby](https://www.ruby-lang.org/es/) (versión 3.1 o superior)
- [Rails](https://rubyonrails.org/) (versión 7.0 o superior)
- [SQLite3](https://www.sqlite.org/index.html)
- [Git](https://git-scm.com/) (para clonar el repositorio)

## Instalación

Sigue los siguientes pasos para instalar y ejecutar el proyecto localmente:

1. Clona este repositorio:
    ```bash
    git clone https://github.com/tu_usuario/auth_api.git
    cd auth_api
    ```

2. Instala las dependencias:
    ```bash
    bundle install
    ```

3. Ejecuta las migraciones para configurar la base de datos:
    ```bash
    rails db:migrate
    ```

4. Inicia el servidor:
    ```bash
    rails server
    ```

El servidor estará corriendo en `http://localhost:3000`.

## Uso de la API

### Registro de Usuario

**Endpoint:** `POST /api/v1/register`

**Descripción:** Registra un nuevo usuario en el sistema.

**Parámetros esperados:**

```json
{
  "user": {
    "username": "usuario1",
    "password": "password123"
  }
}