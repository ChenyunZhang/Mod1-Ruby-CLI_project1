require 'open-uri'

class Scraper
    def get_quote
        doc = Nokogiri::HTML(open(""))
    end 
end