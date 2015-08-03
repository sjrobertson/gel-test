Feature: GEL Numbered Pagination, Default sizing (feature phones)
  In order to ensure that numbered pagination implementations meet the GEL standards
  As an evaluator for GEL compliance
  I want to test the fixture page of a project for numbered pagination styles

  Scenario: Numbered Pagination Page Can Be Accessed
    When I go to the Fixture Page
    Then the page has a title of "GEL Numbered Pagination Sampler"
