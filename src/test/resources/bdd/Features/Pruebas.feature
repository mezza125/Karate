@prueba
Feature: Obtener información sobre un Pokémon

  Scenario: Consultar información sobre Pikachu
    Given url 'https://pokeapi.co/api/v2/pokemon/Pikachu'
    When method get
    Then status 200
    And print response
    And def ditto = response
    And match ditto.name == 'pikachu'
    And match ditto.id == 25

  Scenario: Obtener información sobre la Berry "cheri"
    Given url 'https://pokeapi.co/api/v2/berry/cheri'
    When method get
    Then status 200
    And def berryInfo = response
    And print berryInfo
    And match berryInfo.name == 'cheri'
    And match berryInfo.id == 1

  Scenario: Obtener información sobre la Berry con ID 2
    Given url 'https://pokeapi.co/api/v2/berry/2'
    When method get
    Then status 200
    And def berryInfoById = response
    And print berryInfoById
    And match berryInfoById.name == 'chesto'
    And match berryInfoById.id == 2