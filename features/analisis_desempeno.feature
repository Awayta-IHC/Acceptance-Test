Feature: Análisis de desempeño de atención

    # US-38: Consultar reporte de calificaciones recibidas
    Scenario: Acceso exitoso al reporte
    Given la autoridad accede al módulo de desempeño,
    And existen calificaciones acumuladas,
    When selecciona el periodo de análisis,
    Then el sistema muestra gráficos y datos consolidados por distrito y por agente.

    Scenario: Reporte sin datos suficientes
    Given la autoridad intenta generar un reporte,
    And no se han acumulado calificaciones suficientes,
    When ejecuta la consulta,
    Then el sistema indica que no hay datos suficientes para generar el informe.

    # US-39: Visualizar evolución de calificaciones
    Scenario: Visualizar gráfico con evolución por fechas
    Given la autoridad accede al panel de evolución,
    When selecciona un periodo de tiempo,
    Then se muestra un gráfico con promedio de calificaciones y tendencias.

    Examples:
        | periodo     | resultado esperable             |
        | semana      | Gráfico con promedio semanal    |
        | mes         | Gráfico con promedio mensual    |

    Scenario: Sin calificaciones en el periodo seleccionado
    Given el periodo seleccionado no tiene datos,
    When el gráfico intenta generarse,
    Then se muestra un mensaje indicando que no hay datos disponibles.

    Scenario: Exportar reporte a Excel
    Given la autoridad quiere exportar los datos,
    When hace clic en “Exportar a Excel”,
    Then se descarga un archivo con todas las calificaciones detalladas y gráficos.
