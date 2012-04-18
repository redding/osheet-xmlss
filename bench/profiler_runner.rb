require 'ruby-prof'
require 'osheet/xmlss'

class OsheetXmlssProfilerRunner

  attr_reader :result

  def initialize(n)
    # RubyProf.measure_mode = RubyProf::MEMORY
    @result = RubyProf.profile do
      Osheet::Workbook.new(Osheet::XmlssWriter.new(:pp => 2), {
        :profiler_row_count => n,
        :data_values => {
          :number   => 1,
          :text     => 'text',
          :currency => 123.45,
          :text     => "<>&'\"/",
          :currency => 45.23
        }
      }) {
        title "bench"

        template(:row, :header) {
          columns.each do |column|
            cell {
              data column.meta[:label]
            }
          end
        }

        template(:row, :data) { |values|
          columns.each do |col|
            cell {
              data values[col.meta[:label]]
              format col.meta[:label]
            }
          end
        }

        worksheet {
          name "profiler results"

          data_values.keys.each do |label|
            column {
              width 200
              meta(:label => label)
            }
          end

          row :header

          profiler_row_count.times do
            row :data, data_values
          end
        }
      }.to_file("./bench/profiler_runner_#{n}.xls")
    end

  end

  def print_flat(outstream, opts={})
    RubyProf::FlatPrinter.new(@result).print(outstream, opts)
    #RubyProf::GraphPrinter.new(@result).print(outstream, opts)
  end

  def print_graph(outstream, opts={})
    RubyProf::GraphPrinter.new(@result).print(outstream, opts)
  end

end
