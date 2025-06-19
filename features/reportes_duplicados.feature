Feature: Unificación de reportes duplicados

    # US-40: Unificar automáticamente reportes duplicados de incidentes ciudadanos
    Scenario: Detección de duplicados exitosa
    Given varios ciudadanos reportan el mismo incidente desde ubicaciones cercanas,
    When el sistema detecta coincidencias en la hora, el tipo de incidente y la ubicación,
    Then agrupa automáticamente los reportes similares,
    And los presenta como un único evento consolidado en el dashboard y el mapa de riesgos.

    Scenario: Falsos positivos en duplicado
    Given dos reportes contienen información parecida, pero corresponden a hechos distintos,
    When el sistema evalúa discrepancias relevantes en hora, ubicación o tipo,
    Then decide no agrupar los reportes,
    And muestra una advertencia indicando que los eventos son similares,
    And permite una revisión manual posterior.
