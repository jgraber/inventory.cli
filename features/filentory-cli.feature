Feature: Filentory-cli works
  
  Scenario: App just runs
    When I get help for "filentory-cli"
    Then the exit status should be 0
    And the banner should be present
    And there should be a one line summary of what the app does
    And the banner should document that this app takes options
    And the following options should be documented:
      |--version|
      |--type|
    And the banner should document that this app's arguments are:
      |name||
      |path||
      |server|optional|

  Scenario: App prints JSON
    When I run "filentory-cli" for the test data
    Then I should get JSON as output
    And the "name" should be "testrun"
    And the "mediatype" should be "DVD"
    And there should be 4 entries in "files"
    And the first file should be placed in the root folder
    And the second file should be in the "folder"
    And the image file should have metadata
    And the video file should have metadata
    

  Scenario: Server does not exist
    When I run "filentory-cli" with the wrong server parameter
    Then I should get a message that the data could not be sent
