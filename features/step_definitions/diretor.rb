Quando(/^obter a lista de filmes$/) do                                       
  @response = HTTParty.get("http://swapi.co/api/films/")
  expect(@response.code).to eq 200
  puts "Codigo Validado"
                                                                       
end   

Então(/^validar quais filmes aparecem o George Lucas e Rick McCallum$/) do   
  @response = HTTParty.get("http://swapi.co/api/films/")
  @response['results'].each do |item|
   if item['director'] == 'George Lucas' && item['producer'].include?('Rick McCallum')
   	puts item['title']
		end 
	
	end    
end                                                                          