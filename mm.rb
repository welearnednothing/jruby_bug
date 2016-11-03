require 'mini_magick'

puts MiniMagick.version

file = MiniMagick::Image.open('test.jpeg')

1000.times do
  file.tap {|f| f.resize '100x100' }
  file.contrast
  file.write('output.jpeg')
end

