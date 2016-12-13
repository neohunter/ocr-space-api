$: << Dir.pwd + '/lib'
require 'pry'
require 'ocr_space'

# initializer
OcrSpace.config.apikey = '18f493558d88957'


response = OcrSpace.from_file '/Users/macbook/Downloads/CO6973863835.pdf'
binding.pry
# response.text
# response.api_result
puts response.text



