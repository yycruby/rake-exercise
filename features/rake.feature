Feature: Rake
  Scenario: Running a single task
    Given a Rakefile with:
      """
      task :hello do
        puts "Hello, world!"
      end
      """
    When I successfully run `rake hello`
    Then the stdout should contain:
      """
      Hello, world!
      """

  Scenario: Running multiple tasks
    Given a Rakefile with:
      """
      task :hello do
        print 'Hello, '
      end

      task :world do
        print 'world!'
      end
    """
    When I run `rake hello world`
    Then the stdout should contain:
      """
      Hello, world!
      """

  Scenario: Basic interdependent tasks
    Given a Rakefile with:
      """
      task :hello, [:foo] do
        print 'bar'
      end

      task :foo do
        print 'foo'
      end
      """
    When I run `rake bar`
    Then the stdout should contain:
      """
      foobar
      """
