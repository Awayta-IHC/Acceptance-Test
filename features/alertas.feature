Feature: Alerta inmediata y categorización de reportes

    # US-03: Botón de "Alerta inmediata" para emergencias
    Scenario: Activación correcta del botón en una emergencia
    Given el usuario se encuentra en peligro directo,
    And tiene acceso al botón de emergencia en su dispositivo,
    When activa el botón,
    Then se envía una alerta inmediata a las autoridades.

    Scenario: Activación accidental del botón
    Given el usuario presiona accidentalmente el botón de emergencia,
    And el sistema detecta la falta de confirmación adicional,
    When se envía la alerta inicial,
    Then las autoridades son notificadas de una posible falsa alarma.

    # US-04: Categorizar reportes por tipo
    Scenario: Categorizar correctamente el reporte
    Given el ciudadano crea un reporte nuevo,
    When selecciona la categoría,
    And guarda el reporte,
    Then el reporte quedará identificado correctamente.

    Scenario: No categorizar el reporte
    Given el ciudadano no selecciona categoría,
    And deja el campo correspondiente vacío,
    When guarda el reporte,
    Then el sistema asignará automáticamente la categoría “Otro”.

    Scenario: Categoría incorrecta seleccionada
    Given el ciudadano crea un reporte nuevo,
    And selecciona una categoría que no coincide con el contenido del reporte,
    When guarda el reporte,
    Then el sistema validará la información,
    And Y notificará al ciudadano sobre la inconsistencia identificada.
    
    Examples:
        | categoria        | resultado esperable                             |
        | Robo             | El reporte queda identificado correctamente     |
        | (vacío)          | El sistema asigna automáticamente "Otro"        |
        | Incongruente     | El sistema notifica inconsistencia de categoría |