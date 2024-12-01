```markdown
# Simulador de Caída de Servidor en Batch

Este script en **Batch** simula la caída de un servidor, generando una experiencia interactiva y técnica que muestra mensajes de error creíbles, operaciones ficticias, y ventanas CMD adicionales. Es ideal para pruebas, demostraciones, o para situaciones en las que necesites justificar un diagnóstico o intervención técnica.

## 🖥️ Características

- Simulación realista de errores del sistema y problemas del servidor.
- Mensajes técnicos que incluyen fallos de red, acceso al disco y autenticación.
- Ventanas CMD secundarias con comandos técnicos inofensivos como `netstat`, `tree`, `tasklist`, etc.
- Pantalla principal en modo completo para maximizar la inmersión.
- Diseño interactivo que asegura que parezca un proceso de diagnóstico activo.
- Ejecución continua durante más de 4 horas, ideal para uso prolongado.

## 🚀 Instalación

1. Descarga el archivo `server_simulation.bat` desde este repositorio.
2. Guarda el archivo en el directorio deseado.
3. Haz clic derecho sobre el archivo y selecciona **Ejecutar como administrador** para asegurarte de que todos los comandos funcionen correctamente.

## 📋 Uso

1. **Inicia el script:**
   - Al ejecutarlo, se abrirá una ventana CMD en pantalla completa.
   - Verás mensajes que simulan problemas técnicos en el servidor.

2. **Qué hace el script:**
   - Muestra mensajes de errores aleatorios en intervalos regulares.
   - Genera ventanas CMD secundarias que ejecutan comandos reales inofensivos.
   - Las ventanas secundarias se abren y cierran automáticamente.

3. **Salida:**
   - El script continuará ejecutándose hasta que lo cierres manualmente.

## 🛠️ Personalización

Puedes editar las secciones del script para adaptarlas a tus necesidades específicas:

### Cambiar mensajes de error
Edita la lista de errores en el código:
```batch
set "errores=Error crítico en el disco;Error al acceder al sistema de archivos;Timeout al conectar con el servidor;Falla en la autenticación de usuario;Error de escritura en registro;Pérdida de conexión de red;Fallo del sistema operativo"
```

### Comandos de ventanas CMD secundarias
Edita los comandos que se ejecutan en las ventanas secundarias:
```batch
set "comandos_aleatorios=netstat -ano;tree;tasklist;ipconfig;dir;ping localhost"
```

### Ajustar la duración
Cambia el valor del temporizador para aumentar o reducir la espera entre ciclos:
```batch
timeout /t 60 >nul
```

## ⚠️ Advertencias

- Este script es **completamente inofensivo** y no realiza cambios reales en el sistema.
- **No lo uses para engañar de manera malintencionada.** Está diseñado únicamente para fines educativos o de simulación técnica.
- Ejecutarlo en un entorno no autorizado puede tener consecuencias legales o laborales. Úsalo bajo tu responsabilidad.

## 📝 Contribuciones

¿Tienes ideas para mejorar este script? ¡Abre un *issue* o envía un *pull request*! Agradecemos tus sugerencias.

## 📜 Licencia

Este proyecto está bajo la licencia MIT. Consulta el archivo [LICENSE](LICENSE) para más información.

---

### 📧 Contacto

Para consultas o soporte, contacta al creador:

- **Autor:** Nahuel Espinoza
- **LinkedIn:** [Nahuel Espinoza](https://www.linkedin.com/in/nahuel-espinoza)
```

---
