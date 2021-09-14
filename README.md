# DH-Database

**Digital House**
**Entregable de Bases de Datos**

La BD consta de 5 tablas:
- **notas**
- **usuarios**
- **categorias**
- **notas-categorias**
- **log**

La tabla **notas** se vincula a la tabla **usuarios** mediante el campo **usuario_id**.
Como cada nota puede tener más de una categoría, para poder relacionarlas es preciso recurrir a otra tabla que las vincule (**notas-categorias**).
Por último, para conocer el historial de modificaciones de las notas se dispone de la tabla **log**. Solo se contempla la fecha de última modificación y la operación efectuada (**I**nsert, **U**pdate o **D**elete). Si se desea ser mas preciso, en lugar de guardar una fecha se podria reemplazar por un datetime o timestamp.

**Archivos**

- Entregable-BD.html          : Archivo de relaciones importable en Draw.io.
- Entregable-BD.png           : Gráfico de relaciones.
- Entregable-BD-SQL-Script.sql: Script para instalar la BD **Notepad** con algunos registros de prueba.
