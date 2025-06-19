Feature: Mostrar ubicación actual

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

    Examples:
        | GPS_activado | resultado esperable                        |
        | true         | Muestra ícono GPS y dirección actual       |
        | false        | Muestra mensaje para activar ubicación     |