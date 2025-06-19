Feature: Visualización de zonas peligrosas

    # US-06: Consultar zonas peligrosas en mapa de calor
    Scenario: Establecer ruta diaria
    Given el ciudadano desea planificar su ruta,
    When accede al mapa de calor,
    Then podrá ver claramente las zonas categorizadas por niveles de riesgo,
    And filtrarlas por tipo de incidente.

    Scenario: Ruta diaria segura
    Given que el ciudadano consulta el mapa,
    When no haya incidentes recientes en su área,
    Then verá un mensaje indicando “Sin reportes recientes” y zonas en color neutro.

    Scenario: Error al visualizar ruta
    Given el ciudadano intenta abrir el mapa,
    When ocurra un error de carga,
    Then verá un mensaje de error con opción a reintentar.

    # US-07: Consultar historial de zonas peligrosas
    Scenario: Ver historial de zonas peligrosas
    Given el ciudadano accede al historial,
    When selecciona un rango de fechas,
    Then puede visualizar la evolución del riesgo en el mapa.
    
    Scenario: No existen datos históricos
    Given que el ciudadano selecciona un periodo,
    When no hay datos disponibles,
    Then el sistema muestra un mensaje informativo.
