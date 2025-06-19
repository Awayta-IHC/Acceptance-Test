Feature: Filtrado avanzado en mapas

    # US-50: Filtrar mapa de calor por validación y tiempo reciente
    Scenario: Mostrar mapa filtrado
    Given el usuario ha accedido al mapa,
    When activa el filtro “solo verificados” y “últimos 7 días”,
    Then el sistema actualiza la vista y muestra únicamente zonas con reportes confirmados y recientes.

    Examples:
        | verificados | periodo         | resultado esperable                              |
        | true        | últimos 7 días  | Muestra zonas con reportes recientes y validados |
        | false       | últimos 30 días | Muestra zonas con todos los reportes             |

    Scenario: Sin resultados con los filtros
    Given no existen reportes recientes y validados en la zona,
    When el usuario aplica ambos filtros,
    Then el sistema muestra el mensaje: “No hay reportes recientes verificados en esta área”.


