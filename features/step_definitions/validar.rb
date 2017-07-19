Quando(/^exibir o conteudo 'api\/films'$/) do                                
  @response = HTTParty.get("http://swapi.co/api/films/")
   Titulo = []
  @response['results'].each do |item|
    Titulo << item['title']
  
  end
  puts Titulo
end
                                                                         
                                                                             
Então(/^validar os dados do'api\/films'$/) do                                
  expect(@response.code).to eq 200
end                                                                                                                                           