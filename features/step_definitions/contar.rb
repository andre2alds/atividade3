Quando(/^obter um valor aleatorio$/) do
  @response = HTTParty.get("http://swapi.co/api/planets/")
  expect(@response.code).to eq 200
  puts "Código validado"
  @valor = @response["count"]
  puts @valor
  @valor_2 = rand(1..20)
  puts @valor_2
  @count = @valor + @valor_2
  puts @count
  @response_2 = HTTParty.get("http://swapi.co/api/planets/#{@count}")

	
end

Então(/^validar o status\-code e a mensagem exibida$/) do

   expect(@response_2.code).to eq 200
   puts "Codigo validado"
end