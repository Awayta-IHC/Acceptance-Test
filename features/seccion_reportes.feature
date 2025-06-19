Feature: Acceso y navegación en la sección de reportes

    # US-05: Acceder a una sección de reportes
    Scenario: Ingreso a la sección de reportes
    Given el ciudadano está en la pantalla principal,
    When selecciona la opción de “Reportes”,
    Then se abre la sección con las opciones de crear, consultar y editar reportes.

    Scenario: Error de actualización en la sección de reportes 
    Given que el ciudadano intenta acceder a la sección,
    And el sistema presenta un error,
    When se intente cargar la sección,
    Then se muestra un mensaje de “No se pudo abrir la sección, intente nuevamente”.
