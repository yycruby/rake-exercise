Feature: Rake
  Scenario: Running a single task
    Given a Rakefile with:
      """
      task :hello do
        puts "Hello, world!"
      end
      """
    When I run `bin/rake hello`
    Then the output should contain:
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
    When I successfully run `bin/rake hello world`
    Then the output should contain:
      """
      Hello, world!
      """

  Scenario: Basic interdependent tasks
    Given a Rakefile with:
      """
      task :bar => :foo do
        print 'bar'
      end

      task :foo do
        print 'foo'
      end
      """
    When I successfully run `bin/rake bar`
    Then the output should contain:
      """
      foobar
      """
