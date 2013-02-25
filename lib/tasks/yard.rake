require 'yard'
require 'yard/rake/yardoc_task'
 
YARD::Rake::YardocTask.new do |t|
  t.files   = ['app/controllers/**/*.rb','app/helpers/**/*.rb', 'app/mailers/**/*.rb', 'app/models/**/*.rb', 'lib/**/*.rb']
  t.options = ['--no-private', '--output-dir', 'doc/yardoc', '--list-undoc']
  t.options << '--debug' << '--verbose' if $trace
end
