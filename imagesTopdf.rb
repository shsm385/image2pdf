# encoding: utf-8

require 'rubygems'
require 'RMagick'

filename = ARGV[0]
form = ARGV[1]
path = "./" + filename + "/*." + form
images = []
# Dir.mkdir(path)

Dir.glob(path).each do |file_name|
    images.push(file_name)
end


images.sort {|a, b|
  a.to_i <=> b.to_i
}

imagePdf = Magick::ImageList.new(*images)
imagePdf.write(filename + ".pdf")
