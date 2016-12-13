require "ocr_space/version"
require "ocr_space/connector"
require "ocr_space/configurator"

module OcrSpace
  def self.config
    Configurator.instance
  end
  
  def self.from_url(url, language: 'eng', overlay_required: false)
    ocr_conector = Connector.new  
    ocr_conector.make_request url, language: language, overlay_required: overlay_required
  end

  def self.from_file(path, language: 'eng', overlay_required: false)
    ocr_conector = Connector.new
    ocr_conector.make_request_file path, language: language, overlay_required: overlay_required
  end
end
