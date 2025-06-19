Feature: Calificaciones al personal

    # US-33: Calificar la atención recibida
    Scenario: Mostrar opción de calificación
    Given el ciudadano ha recibido atención,
    And el caso ha sido cerrado,
    When accede al historial de reportes,
    Then ve la opción para calificar la atención.

    Scenario: Enviar calificación
    Given el ciudadano accede a la opción de calificación,
    When selecciona de 1 a 5 estrellas y escribe un comentario,
    Then el sistema guarda la calificación
    And la vincula con la incidencia atendida.	

    Scenario: Validar campos obligatorios
    Given el ciudadano está en el formulario de calificación,
    When intenta enviar sin seleccionar estrellas,
    Then se muestra un mensaje indicando que debe seleccionar una calificación.

    # US-34: Ver historial de calificaciones dadas
    Scenario: Visualización de historial
    Given el ciudadano accede a su perfil,
    And entra a la sección de calificaciones,
    When revisa la lista,
    Then ve las calificaciones con fecha y comentario.

    Scenario: Filtrar historial por fecha
    Given el ciudadano tiene muchas calificaciones,
    When filtra por mes o año,
    Then el sistema muestra solo las calificaciones del periodo seleccionado.

    Examples:
        | filtro        | resultado esperable                             |
        | mes           | Calificaciones del mes seleccionado             |
        | año           | Calificaciones del año seleccionado             |

    Scenario: Ver detalles de una calificación
    Given el ciudadano ve la lista de calificaciones,
    When selecciona una,
    Then se muestran los detalles del reporte asociado y la evaluación.
