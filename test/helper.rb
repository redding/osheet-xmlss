# this file is automatically required in when you require 'assert' in your tests
# put test helpers here

# add root dir to the load path
$LOAD_PATH.unshift(File.expand_path("../..", __FILE__))

class Assert::Context

  def xmlss_style_markup(writer)
    Xmlss::Workbook.writer(writer.xmlss_workbook).styles_markup.flush.to_s
  end

  def xmlss_element_markup(writer)
    Xmlss::Workbook.writer(writer.xmlss_workbook).worksheets_markup.flush.to_s
  end

end
