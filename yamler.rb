require 'pp'
require 'psych'
require 'yaml'

files = ['examples.yaml',
         'publications.yaml',
         'rulesets.yaml',
         't001.yaml']

begin 
  files.each do |f|
    pp Psych.load_file(f)
  end 
rescue StandardError => e
  puts "Could not parse YAML: #{e.message}"
end
