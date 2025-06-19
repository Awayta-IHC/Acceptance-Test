Feature: Monitoreo por cámaras comunitarias

    # US-43: Visualizar cámaras comunitarias desde la app
    Scenario: Acceso exitoso a la cámara
    Given el ciudadano ingresa al mapa de seguridad,
    When selecciona una cámara disponible,
    Then el sistema carga la transmisión en vivo sin interrupciones,
    And permite ver la zona supervisada en tiempo real.

    Scenario: Cámara fuera de servicio
    Given una de las cámaras está en mantenimiento o fuera de línea,
    When el ciudadano intenta acceder a su transmisión,
    Then el sistema muestra el mensaje “Cámara no disponible por mantenimiento”,
    And no permite abrir la visualización hasta que se restablezca el servicio.

    # US-46: Ver cámaras en mantenimiento desde la app
    Scenario: Cámara marcada en mantenimiento
    Given la autoridad programó una revisión,
    When el usuario accede al mapa,
    Then la cámara aparece en gris y con etiqueta “En mantenimiento”.

    Scenario: Sin indicación de estado
    Given la cámara no fue marcada,
    When falla la transmisión,
    Then se mostrará un mensaje emergente de fuera de servicio o desconectada.
