Feature: Funcionalidades basicas mileage

  Scenario: Recargar de combustible el vehiculo
    Given I press "Fillup"
    Then I take a screenshot
    When I enter text "9800" into field with id "price"
    And I enter text "5" into field with id "volume"
    And I enter text "10000" into field with id "odometer"
    And I press the "Save Fillup" button
    And I wait
    Then I press "History"
    Then I wait to see "9,800"
    And I wait

   Scenario: Revisar estadisticas para VRT
    Given I press "Statistics"
    And I wait
    Then I take a screenshot
    Then I wait to see "Fuel economy"
    And I wait

  Scenario: Registrar vehiculo
    Given I press "Vehicles"
    Then I press "Default vehicle"
    Then I take a screenshot
    And I wait
    And I take a screenshot
    Then I clear "title"
    When I enter text "Volkswagen" into field with id "title"
    Then I clear "year"
    And I enter text "2020" into field with id "year"
    Then I clear "make"
    And I enter text "virtus" into field with id "make"
    Then I clear "model"
    And I enter text "Compacto" into field with id "model"
    Then I clear "description"
    And I enter text "Carro de drive test" into field with id "description"
    And I scroll down
    And I scroll down
    And I press "Miles"
    And I press "Kilometers"
    And I press "Gallons"
    And I press "Litres"
    And I wait
    And I take a screenshot
    And I scroll down
    And I press the "Save changes" button
    Then I wait to see "Volkswagen"
    And I wait
    And I take a screenshot
    And I wait


