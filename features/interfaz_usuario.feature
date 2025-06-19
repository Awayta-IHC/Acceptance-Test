Feature: Interfaz de usuario y experiencia de navegación

    # US-26: Acceder a una pantalla de inicio amigable
    Scenario: Visualización correcta de la pantalla de inicio
    Given el ciudadano ingresa a la pantalla de inicio,
    And esta está diseñada con íconos y secciones organizadas,
    When interactúa con los elementos principales,
    Then puede acceder fácilmente a apartados como alertas, noticias, perfil, etc.

    Scenario: Error de carga de inicio
    Given el ciudadano accede a la pantalla de inicio,
    And esta muestra elementos mal organizados o superpuestos debido a un error de carga,
    When intenta interactuar con secciones u opciones,
    Then se muestra un mensaje indicando que actualice o refresque el apartado.

    Scenario: Personalización del diseño inicial
    Given el ciudadano ha configurado preferencias de navegación,
    When inicia sesión en la app,
    Then ve una pantalla inicial adaptada a sus intereses.
    And puede reorganizar secciones según sus prioridades,

    Scenario: Modo accesibilidad activado
    Given el ciudadano requiere una experiencia más accesible,
    And activa el modo accesibilidad,
    When accede a la pantalla de inicio,
    Then los elementos visuales se ajustan para mayor claridad.
    And los textos se muestran en tamaños más grandes o con alto contraste.

    # US-27: Navegar de forma intuitiva entre apartados
    Scenario: Navegación mediante barra
    Given el usuario está en cualquier sección de la app,
    When presiona un ícono de la barra inferior,
    Then es llevado instantáneamente a la sección correspondiente,
    And la pantalla de la nueva sección se carga correctamente.

    Scenario: Barra de navegación no responde
    Given el ciudadano intenta acceder a otra sección usando la barra inferior,
    And la barra de navegación no responde debido a un problema técnico,
    When toca el ícono varias veces,
    Then el sistema muestra un mensaje indicando que la barra no está disponible temporalmente,
    And sugiere reiniciar la app o contactar soporte técnico para resolver el problema.

    Scenario: Barra de navegación no visible
    Given el usuario está utilizando una sección que requiere un diseño de pantalla completa,
    When intenta volver a la barra inferior,
    Then aparece al deslizar hacia arriba o al tocar un botón específico,
    And puede continuar navegando sin perder su progreso en la sección actual.
