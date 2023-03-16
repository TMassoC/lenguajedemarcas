(: 3. Crear una consulta XQuery que, por cada usuario, 
informe de los días que tiene que venir, a hacer qué actividades, 
y a que horas. Deben estar ordenados por nombre y por día 
(si el jueves queda antes que el lunes, no pasa nada). :)


for $servicio in doc("pruebas.xml")/salud/servicios/*
for $dia in $servicio/dias/dia
for $empleado in $servicio/empleados/*
order by $empleado, $dia
return 
    concat(
        string($empleado), " - ", 
        string($servicio/local-name()), " - ", 
        string($dia), " - ", 
        string-join($servicio/horas/hora, ', ')
    )

