Feature: Privacidad y perfil del usuario

    # US-30: Ajustar preferencias de privacidad del usuario
    Scenario: Activar privacidad anónima
    Given el ciudadano quiere mantener su identidad protegida,
    When activa el modo anónimo en configuración,
    Then sus reportes y calificaciones no mostrarán su nombre públicamente.

    Scenario: Compartir ubicación solo durante reportes
    Given el usuario prefiere controlar el uso del GPS,
    When marca la opción de “usar solo ubicación al reportar”,
    Then la app solo accederá a su posición durante el envío del reporte.

    # US-31: Acceder al historial de actividad desde perfil
    Scenario: Ver lista de actividades
    Given el ciudadano accede a su perfil,
    When selecciona “Estadísticas y más…”,
    Then ve una lista de todas sus acciones agrupadas por tipo y fecha.

    Scenario: No hay actividades registradas
    Given es un nuevo usuario,
    When accede al historial,
    Then se muestra el mensaje “Aún no tienes actividades registradas”.
