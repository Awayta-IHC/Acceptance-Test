Feature: Seguimiento de calificaciones

    # US-41: Responder a una calificación como administrador
    Scenario: Ver estado de revisión de calificación
    Given el ciudadano revisa sus calificaciones,
    When una autoridad ya la ha leído,
    Then se muestra un estado de “visto” o “en revisión”.

    Scenario: Calificación sin retroalimentación
    Given el ciudadano revisa una calificación,
    When esta no ha sido revisada aún,
    Then se muestra el mensaje “sin respuesta registrada”.

    Scenario: Ver historial de respuestas
    Given hay múltiples interacciones,
    When el ciudadano accede a una calificación,
    Then puede ver todas las respuestas en orden cronológico.
