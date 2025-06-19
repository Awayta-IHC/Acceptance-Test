Feature: Notificaciones de calificación

    # US-35: Recibir notificación para calificar atención
    Scenario: Enviar notificación tras cierre de caso
    Given el caso ha sido marcado como cerrado,
    And el ciudadano tiene una cuenta activa,
    When han pasado 10 minutos del cierre,
    Then el sistema envía una notificación para calificar.

    Scenario: Evitar duplicidad de notificaciones
    Given ya se envió una notificación,
    When el ciudadano no ha calificado aún,
    Then no se envía otra notificación adicional.

    Scenario: Reenviar notificación tras 24 horas sin calificar
    Given el ciudadano no calificó después de 24 horas,
    When el sistema hace la revisión,
    Then se envía una nueva notificación de recordatorio.
    
    # US-36: Calificar atención desde notificación
    Scenario: Acceso directo desde notificación
    Given el ciudadano recibe la notificación,
    When hace clic en ella,
    Then se abre el formulario de calificación asociado al reporte.

    Scenario: Validar vigencia de la notificación
    Given la notificación tiene más de 7 días,
    When el ciudadano intenta acceder,
    Then se muestra un mensaje indicando que ya no puede calificar.

    Scenario: Mostrar confirmación tras calificar
    Given el ciudadano completa el formulario,
    When envía su calificación,
    Then se muestra un mensaje de agradecimiento y confirmación.
