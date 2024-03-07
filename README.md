# Proyecto Centenario Pereira 2023 - 2024

Proyecto para comunicar una comunidad del colegio Centenario de Pereira ubicado en la ciudad de Pereira, el cual tiene el objetivo de hacerlo con la mayor precisión y calidad posible. En este repositorio encontraras registros y de todo el producto desarrollado.

## 👤 Autores

- [@KevaCG](https://github.com/KevaCG)
- [@Frankgmv](https://github.com/frankgmv)

## 📄 Licencia

[![MIT Licencia](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)

## 🌃 Estrucutra del proyecto

El proyecto consta de dos faces las cuales serán explicadas a continuación.
- BACKEND: API la cual procesa seciones, permisos, validaciones de datos y multimedia, etc. También guarda los datos por medio de un ORM a una base de datos de PostgreSQL, todo este depende de unas variables de entorno la cuales se explicaran más adelante.

- FRONTEND: Muestra los datos de manera organizada para procesarlos, esta sujeta a todas las salidas de datos de la API desde las validaciones hasta los procesos erróneos y bien realizados.

> [!Tip]
> ### Recomendaciones cuenta lo siguiente.
> - ten en cuenta que para el envió de correos tu PC necesita tener conexión a internet 
> - Para instalar tus dependencias hazlo con una conexión estable para evitar errores.

## 📚 Bases de datos

> [!Note]
> #### Importar  Base de Datos
> Si deseas crear la base de datos sin correr el proyecto en la carpeta de DATABASE se encuentra adjunto un archivo para PostgreSQL el cual importa toda la base de datos.



## 🛠 Hablilidades obtenidas
Javascript, HTML, CSS, REACT, NODE


## ⚕️ Variables de entorno 

>[!Note]
>#### Variables importantes
>Estas Variables son indispensables para el funcionamiento correcto del código.

#### Token key para la codificación de los datos

`PORT`
`DB_HOST`
`DB_NAME`
`DB_PORT`
`DB_USER`
`DB_PASSWORD`
`API_KEY`

#### Token key para la codificación de los datos

`SECRET_KEY_TOKEN`

#### Clave especial de registro por defecto

`CLAVE_ESPECIAL`

#### Variables de webmaster para iniciar en la pagina web

`PASSWORD_WM`
`ID_WM`


#### Variables de emails de envio de notificaciones

`EMAIL_USER`
`EMAIL_PASS`


## 💻 Correr de manera local

Clonar el proyecto

```bash
  git clone https://github.com/Frankgmv/proyecto_final_sena_2024
```

## 🔙 Correr aplicación BACKEND o API 

Entrar al directorio del BACKEND

```bash
  cd APP_BACKEND
```

Instalar dependencias

```bash
  npm install
```

> [!Tip]
> ## No olvides las variables de entorno
> - Si no agregas tus variables de entorno no va a correr correctamente el proyecto.
>

Desplegar servidor local

```bash
  npm run dev
```

## 📲 Correr aplicación FRONTEND

Entrar al directorio del FRONTEND
```bash
  cd APP_FRONTEND
```

Instalar dependencias

```bash
  npm install
```

Desplegar servidor local con la aplicación de backend

```bash
  npm run dev
```
## ⚗️ Stack de tecnologías

**Client:** React con Vite

**Server:** Node con Express


## 📔 Documentación

Herramienta para visualizar diagramas
[StartUML](https://staruml.io/download/)

La documentación se encuentra toda enbebida en la carpeta DOCUMENTACION en la cual encontrará multiples diagramas, documentos y  manuales necesarios de la aplicación.

