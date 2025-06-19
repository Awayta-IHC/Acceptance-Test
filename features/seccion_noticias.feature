Feature: Noticias y ubicación en el mapa

    # US-28 - Visualizar últimas noticias de seguridad
    Scenario: Consulta de noticias
    Given el usuario ingresa al apartado de “Noticias”,
    And está conectado a internet,
    When actualiza el feed,
    Then verá las últimas noticias de seguridad de su distrito.

    Scenario: Error en la carga de noticias
    Given el usuario accede al apartado de “Noticias”,
    And el dispositivo no logra conectarse a internet correctamente,
    When intenta actualizar el feed,
    Then no se muestra ninguna noticia en el apartado,
    And el sistema indica que hubo un problema de conexión o falta de datos disponibles.

    Scenario: Notificación de nueva noticia
    Given una noticia relevante es publicada,
    When el usuario está usando la app,
    Then recibirá una notificación destacando la nueva noticia.

    # US-29 - Mostrar ubicación actual del ciudadano en el mapa
    Scenario: Mostrar ubicación automáticamente
    Given el ciudadano accede al mapa,
    And tiene el GPS activado,
    When el sistema detecta su ubiación,
    Then aparece un ícono de GPS indicando su ubicación y dirección actual.

    Scenario: GPS desactivado
    Given el GPS está desactivado,
    When el usuario accede al apartado,
    Then se muestra un mensaje que solicita activar la ubicación en tiempo real.
