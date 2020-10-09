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
    values_array << crypto_value.text.delete('$,').to_f

  end
return values_array
end



  def arraying_crypto_name_value
    names_array = currencies_names
    values_array = currencies_values
    bloc_chienne = [] #/ on initialise un array pour les stocker

    names_array.each_with_index do |k, v|    #/ on associe pour chaque item de symbols_array un item de prices_array
      bloc_chienne << {k => (values_array)[v]} #/ on sauvegarde sous forme d'hash dans le tableau
    end
    return bloc_chienne
end


puts arraying_crypto_name_value
