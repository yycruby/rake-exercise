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
    When I run `bin/rake hello world`
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
    When I run `bin/rake bar`
    Then the output should contain:
      """
      foobar
      """

  Scenario: Complex interdependent tasks
    Given a Rakefile with:
      """
      task :make_mac_and_cheese => [:buy_pasta, :buy_cheese, :boil_water] do
        puts "Make mac and cheese"
      end

      task :buy_pasta => [:goto_store] do
        puts "Buy pasta"
      end

      task :buy_cheese => [:goto_store] do
        puts "Buy cheese"
      end

      task :boil_water do
        puts "Boil water"
      end

      task :goto_store do
        puts "Goto store"
      end
      """
    When I run `bin/rake make_mac_and_cheese`
    Then the output should contain:
      """
      Goto store
      Buy pasta
      Buy cheese
      Boil water
      Make mac and cheese
      """
