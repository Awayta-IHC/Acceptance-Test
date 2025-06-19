Feature: Invitaciones a nuevos usuarios

    # US-32: Invitar a otros ciudadanos a participar en la app
    Scenario: Compartir enlace de invitación
    Given el ciudadano presiona el botón “más” (ícono de tres puntos),
    When selecciona la opción de “Compartir”,
    Then se genera un enlace para enviar por WhatsApp, correo u otras apps.

    Scenario: Error al generar enlace
    Given el sistema presenta un error,
    When el ciudadano intenta compartir,
    Then se muestra el mensaje “No se pudo generar el enlace, intenta más tarde”.
