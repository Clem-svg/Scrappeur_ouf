require 'rubygems'
require 'nokogiri' 
require 'open-uri'

def get_page

page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))  

return page

end

def currencies_names
page = get_page
names_array = []
  all_crypto_names = page.xpath('/html/body/div[1]/div[1]/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr/td[2]')

  all_crypto_names.each do |crypto_name| 
    names_array << crypto_name.text
  end
  return names_array
end

def currencies_values
  page = get_page
values_array = []
  all_crypto_values = page.xpath('/html/body/div[1]/div[1]/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr/td[5]')
  all_crypto_values.each do |crypto_value| 
    values_array << crypto_value.text

  end
return values_array
end

def hashing_crypto_name_value
  names_array = currencies_names
  values_array = currencies_values 

  bloc_chienne = Hash[currencies_names.zip(currencies_values)]
  return bloc_chienne
end

puts hashing_crypto_name_value
