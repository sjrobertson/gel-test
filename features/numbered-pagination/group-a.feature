Feature: GEL Numbered Pagination, Default sizing (feature phones)
  In order to ensure that numbered pagination implementations meet the GEL standards
  As an evaluator for GEL compliance
  I want to test the fixture page of a project for numbered pagination styles

  Scenario: Numbered Pagination Page Can Be Accessed
    When I go to the Fixture Page
    Then the page has a title of "GEL Numbered Pagination Sampler"

  Scenario: Navigating numbered pagination moving forward
    When I select the right chevron
    Then I move one page forward

  Scenario: Navigating numbered pagination moving back
    When I select the left chevron
    Then I move one page back

  Scenario: Selecting a page number button
    When I select a page number button
    Then I am presented with the content of the page number

  Scenario: When an ellipses should appear
    When an ellipses is presented
    Then I know that more pages exist

  Scenario: When an ellipses should not appear
    When an ellipses is presented
    Then the ellipsis is not interactive

  Scenario: Position of numbered pagination at the top of a page
    When numbered pagination is presented at the top of a page
    Then it should be centrally aligned to the content

  Scenario: Position of numbered pagination at the bottom of a page
    When numbered pagination is presented at the bottom of a page
    Then it should be centrally aligned to the content

  Scenario: When the left chevron should appear
    When numbered pagination is presented
    Then a left chevron should always appear

  Scenario: When the right chevron should appear
    When numbered pagination is presented
    Then a right chevron should always appear

  Scenario: Highlight state
    When I select a page number
    Then the page number button is always highlighted

  Scenario: When first page number button should appear
    When I am presented with numbered pagination
    Then I am always shown the first page number button

  Scenario: When last page number button should appear
    When we know how many pages there are
    Then we show the last page number button

  Scenario: When an ellipsis should appear
    When we don’t know how many pages there are
    Then we replace the last page number with an ellipsis

  Scenario: When left chevron is inactive
    When we are on the first page
    Then the left chevron is inactive

  Scenario: When right chevron is inactive
    When we are on the last page 
    Then the right chevron is inactive

  Scenario: When text replaces numbered page buttons
    When screen width is below 320 pixels
    Then we don’t show any numbered page buttons
    And we display text showing the page information

  Scenario: When alt tags appear
    When chevrons are images
    Then we include alt tags

  Scenario: When title tags appear
    When chevrons are scalable vector graphics
    Then we include title tags

  Scenario: Order of tabbing
    When numbered pagination is presented
    Then the tabbing order should be left to right

  Scenario: Order of tabbing with ellipses
    When numbered pagination is presented
    Then the ellipses is not interactive
    And the tabbing should skip past it

  Scenario: When an ellipses shouldn’t appear
    When there is only a small number of pages
    Then we show the page buttons without an ellipsis
