Feature: Reportar incidentes ciudadanos

    # US-01: Reportar incidente de inseguridad
    Scenario: Reportar incidente exitosamente
    Given el ciudadano presencia un hecho delictivo,
    When completa el reporte con ubicación y evidencia multimedia,
    Then el reporte se registra en el sistema,
    And notifica a los usuarios y autoridades cercanas.
    
    Scenario: Reporte en modo offline por falta de conexión
    Given el ciudadano quiere reportar un incidente,
    When no hay conexión a internet, 
    Then el reporte se guardará en el borrador,
    And se enviará automáticamente cuando se recupere la conexión.

    Scenario: Alerta por datos incompletos en reporte
    Given el ciudadano intenta enviar un reporte,
    When no adjunta datos mínimos obligatorios (tipo de incidente, ubicación),
    Then la aplicación resaltará los campos faltantes en rojo,
    And impedirá el envío hasta completar la información básica.

    # US-02: Editar un reporte antes de enviarlo
    Scenario: Editar campos del reporte
    Given el ciudadano está llenando el reporte,
    When detecta un error en la información,
    Then puede corregir los datos antes de enviarlo.

    Scenario: Guardar cambios exitosamente
    Given el ciudadano edita la información,
    When guarda el reporte,
    Then el sistema actualiza la información correctamente.


