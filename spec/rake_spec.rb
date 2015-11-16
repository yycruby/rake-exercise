require 'spec_helper'
require 'rake'

require 'irb'

RSpec.describe 'Rake' do
  include RakeTestMethods

  it 'define and run tasks' do
    rake_file '''
      task :hello do
        puts "Hello, world!"
      end
    '''

    run 'rake hello'

    expect(output).to eq 'Hello, world!'
  end

  it 'can define and run tasks with dependencies' do
    rake_file '''
      task :foo do
        puts "foo"
      end

      task :bar, :foo do
        puts "bar"
      end
    '''

    run 'rake bar'

    expect(output).to eq 'foo bar'
  end
end
