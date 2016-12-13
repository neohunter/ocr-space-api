require 'net/http'
require 'rest_client'
require 'ocr_space/response'
require 'ocr_space'

class OcrSpace::Connector
  URL = 'https://api.ocr.space/parse/image'

  def make_request(url_or_file, language: 'eng', overlay_required: false)
    params = {
      apikey: OcrSpace.config.apikey, 
      language: language, 
      isOverlayRequired: overlay_required
    }

    extra_key = url_or_file.is_a?(File) ? :file : :url
    params[extra_key] = url_or_file

    request = RestClient.post(URL, params)

    OcrSpace::Response.new(request.body)
  end

end