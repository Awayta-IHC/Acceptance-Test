Feature: Gestión de reportes por autoridad

    # US-15: Priorizar incidentes según gravedad
    Scenario: Priorizar reportes según tipo de incidente y ubicación
    Given la central recibe varios reportes,
    When abra la bandeja de incidentes,
    Then verá una lista priorizada por nivel de gravedad y cercanía.

    Scenario: Reportes simultáneos
    Given dos ciudadanos reportan el mismo incidente,
    When se identifique duplicidad,
    Then el sistema consolidará ambos reportes en uno solo.

    Scenario: Reportes pendientes
    Given un incidente carece de información completa,
    When una autoridad lo revise,
    Then podrá marcarlo como pendiente de validación.
    
    # US-18: Gestionar atención de reportes ciudadanos
    Scenario: Filtrar reportes por estado de atención
    Given la autoridad accede al panel operativo municipal,
    When selecciona un estado como “Nuevos”, “En proceso” o “Resueltos”,
    Then el sistema muestra únicamente los reportes correspondientes a ese estado.

    Scenario: Visualizar detalles de un reporte
    Given la autoridad revisa la lista,
    When selecciona un reporte,
    Then se muestran los datos del incidente, ubicación, tiempo de respuesta, etc.

    Scenario: Marcar un reporte como atendido
    Given un agente ya resolvió un caso,
    When la autoridad lo revisa y valida,
    Then puede marcarlo como “Resuelto”
    And el sistema lo registra con fecha de cierre.
