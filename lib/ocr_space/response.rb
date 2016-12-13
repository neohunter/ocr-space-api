require 'json'

# ToDo: Add support to errores from api
# ToDo: Handle multiple ParsedResults

class OcrSpace::Response

  attr_reader :json_result
  def initialize(json)
    @json_result = JSON.parse json

    if ocr_exist_code == 4
      raise NotAbleToParseImage
    end
  end

  def text
    @json_result['ParsedResults'].first['ParsedText']
  end

  def results
    @json_result['ParsedResults']
  end


  class NotAbleToParseImage < StandardError; end
end
