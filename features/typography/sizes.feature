Feature: Typography
  In order to ensure that typography implementations meet the GEL standards
  As an evaluator for GEL compliance
  I want to test the fixture page of a project for text styles

  Scenario: GEL typography Page
    When I go to the Fixture Page
    Then the page has a title of "GEL Typography Demo | BBC GEL"

  Scenario: GEL typography Canon, group D
    When screenwidth is set to "601"
    And touch is not available
    Then an element with selector ".gel-canon" has a "font-size" of "40px"
    And an element with selector ".gel-canon" has a "line-height" of "48px"

  Scenario: GEL typography Canon Bold, group D
    When screenwidth is set to "601"
    And touch is not available
    Then an element with selector ".gel-canon-bold" has a "font-size" of "40px"
    And an element with selector ".gel-canon-bold" has a "line-height" of "48px"
    And an element with selector ".gel-canon-bold" has a "font-weight" of "bold"
    And an element with selector ".gel-canon-bold" has a "letter-spacing" of "-1px"

