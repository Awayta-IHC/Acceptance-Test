Feature: Alertas inteligentes con IA

    # US-48: Recibir alertas por actividad sospechosa detectada por IA
    Scenario: Detección de actividad inusual en zona de acceso restringido
    Given el sistema monitorea un área con restricciones de acceso,
    When se detecta una presencia prolongada en un sector que requiere autorización,
    Then el sistema envía una alerta de actividad sospechosa.

    Scenario: Movimiento normal no genera alerta
    Given una persona pasa brevemente por la zona,
    When no se detecta nada fuera de lo común,
    Then no se genera ninguna notificación.
