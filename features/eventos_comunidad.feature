Feature: Feature name

    # US-13: Recibir notificaciones de reuniones y eventos
    Scenario: Recepción de invitación a evento
    Given un evento es programado por las autoridades o vecinos,
    And el usuario está registrado en la app,
    When el evento programado se encuentra disponible,
    Then el usuario recibirá una notificación con fecha, lugar y descripción del evento,
    And podrá visualizar los detalles en la sección correspondiente de la app.

    Scenario: Fallo en la recepción de notificaciones por falta de registro
    Given el usuario no está registrado en la app,
    When las autoridades o vecinos programan un evento,
    Then no recibe notificaciones.

    Scenario: Recordatorio automático del evento
    Given se acerca la fecha del evento,
    When faltan 24 horas,
    Then el usuario recibe un recordatorio en su dispositivo con información del evento,
    And puede acceder rápidamente a los detalles desde la notificación.


    Scenario: Historial de eventos pasados
    Given el usuario quiere revisar eventos de seguridad anteriores,
    When accede a la sección de “Reuniones y eventos” en la app,
    Then puede visualizar un historial con fechas y detalles de eventos pasados.

    # US-14: Publicar mensajes comunitarios
    Scenario: Publicar mensaje con texto
    Given el ciudadano accede al muro comunitario,
    When escribe un mensaje y presiona “Publicar”,
    Then este se muestra en el feed con fecha y nombre del autor.

    Scenario: Comentarios de otros usuarios
    Given otros ciudadanos ven el mensaje,
    When comentan sobre este,
    Then sus respuestas aparecen ordenadas bajo el mensaje principal.
