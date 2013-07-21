# this file is automatically required when you run `assert`
# put any test helpers here

# add the root dir to the load path
$LOAD_PATH.unshift(File.expand_path("../..", __FILE__))

# require pry for debugging (`binding.pry`)
require 'pry'

require 'xmlss/workbook'

class Assert::Context

  def xmlss_style_markup(writer)
    Xmlss::Workbook.writer(writer.xmlss_workbook).styles_markup.flush.to_s
  end

  def xmlss_element_markup(writer)
    Xmlss::Workbook.writer(writer.xmlss_workbook).worksheets_markup.flush.to_s
  end

end
