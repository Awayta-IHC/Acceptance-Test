Feature: Participación y colaboración ciudadana

    # US-22: Sugerir mejoras de seguridad ciudadana
    Scenario: Enviar sugerencia exitosa
    Given el ciudadano quiere proponer una mejora,
    When accede al formulario de sugerencias,
    Then puede enviarla correctamente y recibir un acuse de recibo.

    Scenario: Revisión de sugerencias por la autoridad
    Given la autoridad recibe las sugerencias,
    When las revisa en el sistema,
    Then puede clasificarlas y priorizar acciones de acuerdo con el impacto.

    # US-23: Participar en encuestas comunitarias
    Scenario: Participación en encuesta exitosa
    Given una encuesta está disponible,
    When el ciudadano presione sobre la misma,
    Then podrá responder preguntas y enviar sus respuestas.

    Scenario: Encuesta vencida
    Given la encuesta ya no está vigente,
    When el ciudadano intenta acceder,
    Then el sistema muestra el mensaje “Esta encuesta ya finalizó”.
