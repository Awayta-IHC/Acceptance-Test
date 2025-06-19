Feature: Alertas y predicciones de riesgo

    # US-08: Recibir alertas de riesgo en tiempo real
    Scenario: Recibir alerta automática de incidente cercano
    Given un nuevo incidente ocurre cerca de la ubicación del usuario,
    And tiene activadas las notificaciones,
    When se registra el reporte,
    Then recibirá una alerta inmediata en su dispositivo.

    Scenario: El dispositivo tiene la ubicación desactivada
    Given la ubicación del usuario está desactivada,
    When se aproxima al área de un reporte,
    Then no recibe ninguna notificación,
    And pasa inadvertidamente por un área peligrosa.

    Scenario: Configurar distancia de notificación
    Given el ciudadano quiere personalizar su experiencia,
    When accede a la configuración,
    Then podrá definir un rango de distancia (ej. 1 km, 3 km, 5 km) para recibir alertas.
    
    Examples:
        | ubicacion_activada | distancia_alerta |
        | true               | 1 km             |
        | true               | 3 km             |
        | true               | 5 km             |
        | false              | -                |  

    # US-10: Tendencias de seguridad impulsadas por IA
    Scenario: Ver tendencias predictivas
    Given el ciudadano accede al apartado de “Tendencias”,
    And el sistema ha analizado datos históricos mediante IA,
    When consulta las predicciones,
    Then puede visualizar zonas de posible riesgo en el mapa,
    And recibir recomendaciones generales sobre cómo mitigar riesgos en dichas áreas.

    Scenario: Datos insuficientes para predicciones
    Given el ciudadano consulta el apartado,
    And los datos históricos no son suficientes para generar predicciones,
    When intenta acceder a las tendencias,
    Then el sistema muestra un mensaje indicando la cantidad de datos insuficiente para realizar el análisis.

    Scenario: Actualización dinámica del modelo de predicción
    Given se han reportado nuevos incidentes en áreas previamente consideradas seguras,
    When el sistema procesa estos datos recientes,
    Then el modelo ajusta las predicciones para reflejar las zonas con mayor riesgo potencial,
    And notifica a las autoridades sobre los cambios en los patrones detectados.

