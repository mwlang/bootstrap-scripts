#!/usr/bin/env ruby

def get_version(cmd, options)
  if `which #{cmd} 2> /dev/null` == ''
    "not installed"
  else
    `#{cmd} #{options}`
  end
end

def listing(values)
  result = ''
  values.each do |value|
    result +=  " - #{value}"
  end
  result
end

puts "OS: #{get_version('uname', '-r -m -o')}"
puts "Apache: #{get_version('apache2', '-v').first}"
puts "Passenger: #{get_version('passenger-config', '--version')}"
puts "Ruby: #{get_version('ruby', '--version')}"
puts "Rubygems: #{get_version('gem', '--version')}"
puts "gems:\n#{listing(get_version('gem', 'list'))}"
