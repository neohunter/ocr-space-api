require 'net/http'
require 'rest_client'
require 'ocr_space/response'
require 'ocr_space'

class OcrSpace::Connector
  URL = 'https://api.ocr.space/parse/image'

  def make_request(url, language: 'eng', overlay_required: false)
    uri = URI(URL)
    request = Net::HTTP.post_form(uri, {
      apikey: OcrSpace.config.apikey, 
      url: url,
      language: language, 
      isOverlayRequired: overlay_required
    })

    OcrSpace::Response.new(request.body)
  end
  def make_request_file(path, language: 'eng', overlay_required: false)
    uri = URI(URL)
    request = RestClient.post(uri, {
      path: File.new(path),
      apikey: OcrSpace.config.apikey, 
      language: language, 
      isOverlayRequired: overlay_required
    })

    OcrSpace::Response.new(request.body)
  end

end