Feature: Registro y acceso a la app

    # US-24: Registrarse en la app usando DNI
    Scenario: Registro con DNI
    Given ciudadano quiere registrarse,
    And se ingresa un DNI real, correo y contraseña,
    When el sistema valida que el DNI no está registrado,
    Then la cuenta se crea exitosamente.

    Scenario: DNI ya registrado
    Given ciudadano quiere registrarse,
    And se ingresa un DNI registrado,
    When intenta completar el registro,
    Then el sistema le muestra un error indicando que ya tiene una cuenta.

    # US-25: Iniciar sesión usando correo y contraseña
    Scenario: Inicio de sesión exitoso
    Given el usuario ingresa sus credenciales correctas,
    When presiona el botón “Iniciar sesión”,
    Then accede directamente a la pantalla principal.

    Scenario: Error en credenciales
    Given el usuario ingresa un correo o contraseña incorrecta,
    When intenta iniciar sesión,
    Then el sistema muestra un mensaje de error,
    And se indica que debe ingresar las credenciales correctas.

    Scenario: Contraseña olvidada
    Given el usuario ingresa credenciales incorrectas repetidamente,
    When el sistema detecta múltiples intentos fallidos,
    Then se muestra el mensaje “¿Olvidaste tu contraseña?”,
    And se muestra una opción para que el usuario pueda acceder directamente a esa funcionalidad.

    Examples:
        | usuario | contraseña | mensaje                 |
        | admin   | 1234       | Bienvenido, admin       |
        | guest   | guest      | Bienvenido, invitado    |
        | root    | wrong      | Credenciales inválidas  |

