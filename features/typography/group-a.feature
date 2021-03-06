Feature: Typography, group A
  In order to ensure that typography implementations meet the GEL standards
  As an evaluator for GEL compliance
  I want to test the fixture page of a project for text styles

  Scenario: GEL typography Page
    When I go to the Fixture Page

  Scenario: GEL typography Canon, group A
    When screenwidth is set to "299"
    And touch is not available
    Then an element with selector ".gel-canon" has a "font-size" of "28px"
    And an element with selector ".gel-canon" has a "line-height" of "32px"

  Scenario: GEL typography Canon Bold, group A
    When screenwidth is set to "299"
    Then an element with selector ".gel-canon" has a "font-size" of "28px"
    And an element with selector ".gel-canon" has a "line-height" of "32px"
    And an element with selector ".gel-canon-bold" has a "font-weight" of "bold"
    And an element with selector ".gel-canon-bold" has a "letter-spacing" of "-1px"

  Scenario: GEL typography Trafalgar, group A
    When screenwidth is set to "299"
    Then an element with selector ".gel-trafalgar" has a "font-size" of "20px"
    And an element with selector ".gel-trafalgar" has a "line-height" of "24px"

  Scenario: GEL typography Trafalgar Bold, group A
    When screenwidth is set to "299"
    Then an element with selector ".gel-trafalgar" has a "font-size" of "20px"
    And an element with selector ".gel-trafalgar" has a "line-height" of "24px"
    And an element with selector ".gel-trafalgar-bold" has a "font-weight" of "bold"
    And an element with selector ".gel-trafalgar-bold" has a "letter-spacing" of "-1px"

  Scenario: GEL typography Double Pica, group A
    When screenwidth is set to "299"
    Then an element with selector ".gel-double-pica" has a "font-size" of "20px"
    And an element with selector ".gel-double-pica" has a "line-height" of "24px"

  Scenario: GEL typography Double Pica Bold, group A
    When screenwidth is set to "299"
    Then an element with selector ".gel-double-pica-bold" has a "font-size" of "20px"
    And an element with selector ".gel-double-pica-bold" has a "line-height" of "24px"
    And an element with selector ".gel-double-pica-bold" has a "font-weight" of "bold"
    And an element with selector ".gel-double-pica-bold" has a "letter-spacing" of "-1px"

  Scenario: GEL typography Great Primer, group A
    When screenwidth is set to "299"
    Then an element with selector ".gel-great-primer" has a "font-size" of "18px"
    And an element with selector ".gel-great-primer" has a "line-height" of "20px"

  Scenario: GEL typography Great Primer Bold, group A
    When screenwidth is set to "299"
    Then an element with selector ".gel-great-primer-bold" has a "font-size" of "18px"
    And an element with selector ".gel-great-primer-bold" has a "line-height" of "20px"
    And an element with selector ".gel-great-primer-bold" has a "font-weight" of "bold"

  Scenario: GEL typography Pica, group A
    When screenwidth is set to "299"
    Then an element with selector ".gel-pica" has a "font-size" of "15px"
    And an element with selector ".gel-pica" has a "line-height" of "20px"

  Scenario: GEL typography Pica Bold, group A
    When screenwidth is set to "299"
    Then an element with selector ".gel-pica-bold" has a "font-size" of "15px"
    And an element with selector ".gel-pica-bold" has a "line-height" of "20px"
    And an element with selector ".gel-pica-bold" has a "font-weight" of "bold"

  Scenario: GEL typography Long Primer, group A
    When screenwidth is set to "299"
    Then an element with selector ".gel-long-primer" has a "font-size" of "15px"
    And an element with selector ".gel-long-primer" has a "line-height" of "18px"

  Scenario: GEL typography Long Primer Bold, group A
    When screenwidth is set to "299"
    Then an element with selector ".gel-long-primer-bold" has a "font-size" of "15px"
    And an element with selector ".gel-long-primer-bold" has a "line-height" of "18px"
    And an element with selector ".gel-long-primer-bold" has a "font-weight" of "bold"

  Scenario: GEL typography Brevier, group A
    When screenwidth is set to "299"
    Then an element with selector ".gel-brevier" has a "font-size" of "14px"
    And an element with selector ".gel-brevier" has a "line-height" of "16px"

  Scenario: GEL typography Brevier Bold, group A
    When screenwidth is set to "299"
    Then an element with selector ".gel-brevier-bold" has a "font-size" of "14px"
    And an element with selector ".gel-brevier-bold" has a "line-height" of "16px"
    And an element with selector ".gel-brevier-bold" has a "font-weight" of "bold"

  Scenario: GEL typography Minion, group A
    When screenwidth is set to "299"
    Then an element with selector ".gel-minion" has a "font-size" of "12px"
    And an element with selector ".gel-minion" has a "line-height" of "16px"
    And an element with selector ".gel-minion" has a "text-transform" of "uppercase"

  Scenario: GEL typography Minion Bold, group A
    When screenwidth is set to "299"
    Then an element with selector ".gel-minion-bold" has a "font-size" of "12px"
    And an element with selector ".gel-minion-bold" has a "line-height" of "16px"
    And an element with selector ".gel-minion" has a "text-transform" of "uppercase"
    And an element with selector ".gel-minion-bold" has a "font-weight" of "bold"