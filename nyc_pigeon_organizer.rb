require 'pry'

def nyc_pigeon_organizer(data)
  pigion_list = {}
  data.each do |category, data_level_2|
    data_level_2.each do |category_level_2, pigions|
      pigions.each do |pigion|
        pigion_list[pigion] = {:color=>[], :gender=>[], :lives=>[]}
      end
    end
  end
  data[:color].each do |color, pigion_array|
    pigion_array.each do |pigion|
      binding.pry
      pigion_list[pigion][:color].push(color)
    end
  end
  puts pigion_list
end
