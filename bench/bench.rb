# $ bundle exec ruby bench/bench.rb

$LOAD_PATH.unshift(File.expand_path("../..", __FILE__))
require 'bench/bench_runner'

OsheetXmlssBenchRunner.new
