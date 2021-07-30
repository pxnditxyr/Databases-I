-- Determinar el porcentaje de varones y de mujeres con respecto a la poblacion empadronada de las provincias, en las que la cantidad de mujeres sea superior a la de los varones, mostrar tambien en que departamento se halla

SELECT
    departamento.nombre AS 'Departamento',
    provincia.nombre AS 'Provincia',
    ROUND( ( provincia.pob_masculina / provincia.pob_empadronada ) * 100, 2 ) AS 'Varones %',
    ROUND( ( provincia.pob_femenina / provincia.pob_empadronada )  * 100, 2 ) AS 'Mujeres %'

FROM
    departamento JOIN provincia
    ON
    departamento.id_departamento = provincia.departamento

WHERE
    provincia.pob_femenina > provincia.pob_masculina;
