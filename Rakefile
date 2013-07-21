require "bundler/gem_tasks"

namespace :bench do

  desc "Run the bench script."
  task :run do
    require 'bench/bench_runner'
    OsheetXmlssBenchRunner.new
  end

  desc "Run the profiler on 1000 rows."
  task :profiler do
    require 'bench/profiler_runner'
    runner = OsheetXmlssProfilerRunner.new(1000)
    runner.print_flat(STDOUT, :min_percent => 1)
  end

  desc "Run the example workbook builds."
  task :examples do
    require 'examples/trivial'
    require 'examples/basic'
    require 'examples/basic_with_templates'
    require 'examples/formats'
    require 'examples/formula'
    require 'examples/styles'
  end

  desc "Run all the tests, then the example builds, then the profiler."
  task :all do
    Rake::Task['test'].invoke
    Rake::Task['bench:run'].invoke
    Rake::Task['bench:profiler'].invoke
    Rake::Task['bench:examples'].invoke
  end


end

task :bench do
  Rake::Task['bench:run'].invoke
end

