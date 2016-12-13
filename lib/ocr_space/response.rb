require 'json'

# ToDo: Add support to errores from api
# ToDo: Handle multiple ParsedResults

class OcrSpace::Response

  attr_reader :json_result, :results
  def initialize(json)
    @json_result = JSON.parse json
    @results = []

    if @json_result['OCRExitCode'] == 4
      raise NotAbleToParseImage
    end

    @json_result['ParsedResults'].each do |pr|
      @results << ParsedResult.new(pr)
    end
  end

  def text
    @json_result['ParsedResults'].first['ParsedText']
  end


  class NotAbleToParseImage < StandardError; end

  class ParsedResult
    attr_reader :text, :source

    def initialize(source_hash)
      @source = source_hash
      @text = @source['ParsedText']
    end
  end
end
