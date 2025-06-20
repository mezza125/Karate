@prueba
Feature: Obtener información sobre un Pokémon

    Background:
      Given url 'https://pokeapi.co/'

  Scenario Outline: Consultar información sobre Pikachu
    Given path 'api/v2/pokemon/<pokemon>'
    When method get
    Then status 200
    And print response
    And match response.name == "<pokemon>"
    And match response.id == <ID>
    Examples:
    | pokemon | ID |
    | pikachu | 25 |
    | ditto | 132  |
    | kakuna | 14  |

  Scenario: Obtener información sobre la Berry "cheri"
    Given path 'api/v2/berry/cheri'
    When method get
    Then status 200
    And def berryInfo = response
    And print berryInfo
    And match berryInfo.name == 'cheri'
    And match berryInfo.id == 1

  Scenario: Obtener información sobre la Berry con ID 2
    Given path 'api/v2/berry/2'
    When method get
    Then status 200
    And def berryInfoById = response
    And print berryInfoById
    And match berryInfoById.name == 'chesto'
    And match berryInfoById.id == 2