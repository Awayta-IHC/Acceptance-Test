Feature: Moderación de comentarios

    # US-42: Moderar comentarios ofensivos en calificaciones
    Scenario: Detectar lenguaje ofensivo
    Given el sistema detecta palabras inapropiadas,
    When una calificación es registrada,
    Then marca automáticamente la calificación como pendiente de revisión.

    Scenario: Ocultar manualmente una calificación
    Given un administrador revisa una calificación,
    When confirma que no cumple con la normativa de la app,
    Then la oculta y deja un motivo.

    Scenario: Registrar acción en bitácora
    Given una calificación fue ocultada,
    When el sistema registra la acción,
    Then se almacena la fecha, usuario y motivo para auditoría.
