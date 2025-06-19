Feature: Visualización de fuentes oficiales

    # US-09: Fuentes externas oficiales
    Scenario: Visualización de fuentes
    Given el ciudadano accede al apartado de mapa de calor,
    And selecciona la opción de ver fuentes externas,
    When consulta los detalles,
    Then puede visualizar una lista de portales oficiales y noticias conectadas,
    And entender cómo estas aportan al mapa de incidentes.

    Scenario: Indisponibilidad de fuentes
    Given el ciudadano consulta el apartado,
    And las fuentes no están disponibles temporalmente,
    When intenta acceder a los datos,
    Then se muestra un mensaje de “inténtelo más tarde”.