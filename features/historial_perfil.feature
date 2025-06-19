Feature: Historial por perfil

    # US-31: Acceder al historial de actividad desde perfil
    Scenario: Ver lista de actividades
    Given el ciudadano accede a su perfil,
    When selecciona “Estadísticas y más…”,
    Then ve una lista de todas sus acciones agrupadas por tipo y fecha.

    Scenario: No hay actividades registradas
    Given es un nuevo usuario,
    When accede al historial,
    Then se muestra el mensaje “Aún no tienes actividades registradas”.