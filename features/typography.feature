Feature: Typography
  In order to ensure that typography implementations meet the GEL standards
  As an evaluator for GEL compliance
  I want to test the fixture page of a project for text styles

  Scenario: GEL typography Page
    When I open page "http://bbc.github.io/gel-typography/"
    then the title should be "GEL Typography Demo | BBC GEL"

  Scenario: GEL typography Canon, group D
    When screenwidth is set to "601"
    And touch is not available
    Then "font-size" of an element with selector ".gel-canon" is 40px
    And "line-height" of an element with selector ".gel-canon" is 48px

 Scenario: GEL typography Canon Bold, group D
    When screenwidth is set to "601"
    And touch is not available
    Then "font-size" of an element with selector ".gel-cannon-bold" is 40px
    And "line-height" of an element with selector ".gel-cannon-bold" is 48px
    And "font-weight" of an element with selector ".gel-cannon-bold" is bold
    And "letter-spacing" of an element with selector ".gel-cannon-bold" is -1px
