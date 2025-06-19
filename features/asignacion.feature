Feature: Asignación y visualización operativa

    # US-16: Asignar responsables de atención
    Scenario: Asignar automáticamente un responsable
    Given se recibe un reporte,
    When se activa la asignación automática,
    Then el sistema asigna al responsable más cercano.

    Scenario: Asignar manualmente
    Given un supervisor desea asignar manualmente,
    When accede a la lista de agentes,
    Then puede seleccionar a un responsable específico.

    # US-17: Visualizar dashboard con métricas de seguridad
    Scenario: Visualización de métricas
    Given la autoridad ingresa al panel de control,
    When selecciona un distrito,
    Then visualiza tasas de criminalidad e incidentes recientes registrados.

    Scenario: Demora al cargar las métricas
    Given la autoridad intenta ingresar al panel de control,
    And el sistema experimenta un error de conexión con la base de datos,
    When intenta visualizar las métricas,
    Then el dashboard no muestra los datos actualizados,
    And se presenta un mensaje de error indicando la falta de información disponible.

    Scenario: Actualización automática
    Given ocurren nuevos incidentes y reportes,
    When pasan 3 minutos,
    And el sistema registra un nuevo reporte,
    Then el dashboard se actualiza automáticamente para reflejar los datos más recientes.
