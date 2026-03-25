# mi-proyecto-devops

Proyecto de flujo de trabajo DevOps usando **Git**, **GitHub** y **AWS S3** como parte de la Actividad 1 de Fundamentos de DevOps en AWS Learner Lab.

## 📁 Estructura del proyecto

```
mi-proyecto-devops/
├── src/
│   ├── index.html    # Página principal del sitio estático
│   └── styles.css    # Estilos del sitio
├── deploy.sh         # Script de despliegue manual a S3
├── .gitignore
└── README.md
```

## 🚀 Despliegue

Para desplegar los archivos al bucket de S3 ejecuta:

```bash
chmod +x deploy.sh
./deploy.sh
```

## 🛠️ Tecnologías

- Git & GitHub — Control de versiones
- AWS S3 — Alojamiento de sitio estático
- AWS CLI — Sincronización con la nube
- Bash — Script de despliegue manual

## 📋 Requisitos

- AWS CLI configurado (`aws configure`)
- Acceso al bucket `mi-bucket-devops` en la región `us-east-1`
- Credenciales de AWS Learner Lab activas

## 🌐 URL del sitio

Después del despliegue, el sitio es accesible en:
```
http://mi-bucket-devops.s3-website-us-east-1.amazonaws.com
```
