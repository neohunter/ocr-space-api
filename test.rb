$: << Dir.pwd + '/lib'
require 'pry'
require 'ocr_space'

# initializer
OcrSpace.config.apikey = '18f493558d88957'


response = OcrSpace.from_url 'http://i53.photobucket.com/albums/g62/pure-perfection/paris-hilton-letter.jpg'
 puts response.text

response = OcrSpace.from_file ''
# response.text
# response.api_result



