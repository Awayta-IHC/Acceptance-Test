Feature: Gestión de horarios de cámaras

    # US-44: Definir horarios de uso para cámaras
    Scenario: Activación automática en horario establecido
    Given se configuró un horario para el uso de las cámaras,
    When llega la hora programada,
    Then la cámara permite la visualización automáticamente.

    Scenario: Error en el horario
    Given se establece un horario,
    When hay un conflicto en la zona horaria o formato,
    Then se muestra un mensaje de corrección.
    
    # US-45: Priorizar horario nocturno de videovigilancia
    Scenario: Ajuste dinámico según condiciones nocturnas
    Given la opción está configurada con un esquema de priorización nocturna,
    When el entorno detecta niveles de iluminación bajos o se alcanza la franja horaria establecida,
    Then la cámara transmite automáticamente.

    Scenario: Notificación en caso de interrupción inesperada
    Given la cámara debería activarse en horario nocturno,
    When el sistema identifica una falla en la activación o un error en el proceso,
    Then se genera una alerta para diagnóstico, permitiendo una corrección temprana.
