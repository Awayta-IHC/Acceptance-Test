Feature: Comunicación comunitaria

    # US-11: Comunicarse con vecinos y autoridades
    Scenario: Comunicación con el chat vecinal
    Given el ciudadano forma parte de un comité vecinal,
    When ingrese al chat comunitario,
    Then podrá enviar mensajes de texto, imágenes o alertas.

    Scenario: Reporte a miembro del chat
    Given un usuario ha violado reglas del grupo,
    And es reportado por otro miembro a través del sistema,
    And se evalúa el reporte determinando que es válido,
    When intente enviar mensajes,
    Then la app le impedirá escribir y le mostrará una advertencia.

    # US-12: Crear foros temáticos de discusión
    Scenario: Crear nuevo foro
    Given el ciudadano tiene un nuevo tema de interés,
    When accede a “Crear foro”,
    Then puede abrir un nuevo espacio de discusión.

    Scenario: Participar en foros existentes
    Given el ciudadano busca foros,
    When selecciona uno,
    Then puede leer y comentar en las discusiones.
