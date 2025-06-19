Feature: Análisis de datos de incidentes

    # US-21: Filtrar estadísticas por tipo de incidente
    Scenario: Filtrar correctamente los resultados
    Given la autoridad desea analizar robos reportados,
    When selecciona el filtro “Robo” en la sección de estadísticas,
    Then verá exclusivamente los registros clasificados como “Robo”,
    And podrá realizar comparaciones por zona y fecha.
    
    Examples:
        | tipo_incidente | resultado esperable                                |
        | Robo           | Se muestran registros clasificados como Robo       |
        | Asalto         | Se muestran registros clasificados como Asalto     |
        | Vandalismo     | Se muestran registros clasificados como Vandalismo |

    Scenario: Error al aplicar filtro
    Given la autoridad intenta filtrar estadísticas por tipo de incidente,
    When ocurre un error en el servidor al aplicar el filtro,
    Then el sistema mostrará un mensaje de alerta: “No se pudo aplicar el filtro, inténtelo más tarde”,
    And permitirá reintentar o contactar soporte técnico.

    Scenario: No hay registros disponibles en el filtro seleccionado
    Given la autoridad usa el filtro de tipo de incidente,
    And selecciona un tipo de incidente sin registros asociados,
    When aplica el filtro,
    Then se mostrará un mensaje indicando que no hay datos disponibles para el criterio seleccionado.

