require 'cucumber/rake/task'
require 'simplabs/excellent/rake'

Cucumber::Rake::Task.new(:features) do |task|
	task.cucumber_opts = "--format html --out report.html"
end

Simplabs::Excellent::Rake::ExcellentTask.new(:excellent) do |task|
  task.html  = "excellent.html"
end
