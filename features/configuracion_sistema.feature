Feature: Configuración del sistema y permisos de autoridad

    # US-47: Gestión de configuración y permisos por parte de la autoridad
    Scenario: Acceso autorizado al panel
    Given la autoridad está correctamente logueada,
    When accede a la sección de configuración del sistema,
    Then puede modificar zonas de patrullaje, horarios de notificaciones, asignar roles a usuarios y gestionar permisos.

    Scenario: Intento de acceso sin autorización
    Given un usuario sin permisos de autoridad intenta acceder al panel de configuración,
    When selecciona el menú de ajustes,
    Then el sistema muestra un mensaje de acceso denegado,
    And no permite visualizar ni modificar ninguna configuración.

