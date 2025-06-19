Feature: Evaluación de servicios de seguridad

    # US-19: Calificar atención recibida
    Scenario: Evaluar mediante estrellas o comentarios
    Given el incidente fue atendido,
    When el ciudadano reciba la encuesta de satisfacción,
    Then podrá calificar en una escala y dejar un comentario.

    Scenario: No desea calificar
    Given el ciudadano no desea calificar,
    When cierre la encuesta,
    Then el sistema registrará su no participación.

    Scenario: Reclamo por algún inconveniente
    Given un ciudadano reporta inconformidad grave,
    When califique la atención con puntuaciones bajas,
    Then se abrirá un formulario adicional para detalle del reclamo.

    # US-20: Registrar tiempos de respuesta a incidentes
    Scenario: Medir tiempo automáticamente desde el reporte
    Given se genera un reporte,
    When un agente acepta el incidente,
    Then el sistema empieza a contar el tiempo hasta que el incidente es resuelto.

    Scenario: Reporte de incidentes no atendidos
    Given un reporte no fue atendido en un tiempo establecido,
    When se sobrepasa el límite,
    Then el sistema genera una alerta interna para revisión.