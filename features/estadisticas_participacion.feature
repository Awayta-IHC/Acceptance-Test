Feature: Estadísticas de participación ciudadana

    # US-49: Visualizar estadísticas de participación por zona
    Scenario: Visualizar estadísticas de participación
    Given se han registrado múltiples reportes ciudadanos en distintas zonas,
    When la autoridad accede al panel de participación,
    Then el sistema muestra un mapa segmentado con colores o porcentajes según el nivel de actividad ciudadana.

    Scenario: Zonas sin participación
    Given hay zonas con baja o nula participación,
    When se genera el informe de participación,
    Then estas zonas se destacan con indicadores visuales de baja interacción,
    And se sugiere realizar campañas de sensibilización en esas zonas.
