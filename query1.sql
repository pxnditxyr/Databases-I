-- En base a campos calculados mostrar cuanto seria el impuesto al valor agregado por cada uno de los platos en la tabla gastronomia que correspondan a Bolivia

SELECT
    pais.nombre AS 'País',
    gastronomia.nombre AS 'Plato',
    gastronomia.precio AS 'Precio',
    ROUND( gastronomia.precio * 0.13 ) AS 'IVA (13%)'
FROM
    pais JOIN gastronomia
    ON
    pais.id_pais = gastronomia.pais
WHERE
    pais.nombre = 'Bolivia';
