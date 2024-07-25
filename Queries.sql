-- Tienda

-- Universidad
USE `universidad`;
SELECT nombre AS 'Nom', apellido1 AS 'Primer cognom', apellido2 AS 'Segon cognom' FROM `persona` WHERE tipo = 'alumno' ORDER BY apellido1 ASC, apellido2 ASC, nombre ASC;
SELECT nombre AS 'Nom', apellido1 AS 'Primer cognom', apellido2 AS 'Segon cognom' FROM `persona` WHERE tipo = 'alumno' AND telefono IS NULL;
SELECT nombre AS 'Nom', apellido1 AS 'Primer cognom', apellido2 AS 'Segon cognom', fecha_nacimiento AS 'Data de naixement' FROM `persona` WHERE tipo = 'alumno' AND fecha_nacimiento LIKE '1999-%';
SELECT nombre AS 'Nom', apellido1 AS 'Primer cognom', apellido2 AS 'Segon cognom', nif AS 'NIF' FROM `persona` WHERE tipo = 'profesor' AND telefono IS NULL AND nif LIKE '%K';
SELECT nombre AS 'Assignatura', cuatrimestre AS 'Quadrimestre', curso AS 'Curs', id_grado AS 'Grau' FROM `asignatura` WHERE cuatrimestre = 1 AND curso = 3 AND id_grado = 7;
SELECT pe.apellido1 AS 'Primer cognom', pe.apellido2 AS 'Segon cognom', pe.nombre AS 'Nom', de.nombre FROM `persona` pe JOIN `profesor` pr ON pe.id = pr.id_profesor JOIN `departamento` de ON pr.id_departamento = de.id ORDER BY pe.apellido1 ASC, pe.apellido2 ASC, pe.nombre ASC; 
SELECT asi.nombre AS 'Nom Assignatura', cu.anyo_inicio AS 'Any inici', cu.anyo_fin AS 'Any de fi' FROM `persona` pe JOIN `alumno_se_matricula_asignatura` al ON pe.id = al.id_alumno JOIN `asignatura` asi ON al.id_asignatura = asi.id JOIN `curso_escolar` cu ON al.id_curso_escolar = cu.id WHERE pe.nif = '26902806M';
SELECT DISTINCT de.nombre FROM `departamento` de JOIN `profesor` pr ON de.id = pr.id_departamento JOIN `asignatura` asi ON pr.id_profesor = asi.id_profesor JOIN `grado` gr ON asi.id_grado = gr.id WHERE gr.id = 4;
SELECT DISTINCT pe.nombre AS 'Nom', pe.apellido1 AS 'Primer cognom', pe.apellido2 AS 'Segon cognom' FROM `persona` pe JOIN `alumno_se_matricula_asignatura` al ON pe.id = al.id_alumno JOIN `asignatura` asi ON al.id_asignatura = asi.id JOIN `curso_escolar` cu ON al.id_curso_escolar = cu.id WHERE cu.anyo_inicio = 2018; 