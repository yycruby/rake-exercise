require 'bundler/setup'
require 'rspec'

RSpec.configure do |c|
  c.color = true
  c.order = :rand
end

module RakeTestMethods
  def rake_file(text)
  end

  def run(cmd)
  end

  def output
  end
end
