require 'aruba/cucumber'

Given(/^a Rakefile with:$/) do |file_content|
  write_file('Rakefile', unescape_text(file_content))
end
