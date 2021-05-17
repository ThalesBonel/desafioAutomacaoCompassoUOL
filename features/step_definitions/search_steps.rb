Dado("que esteja na página inicial") do
  @home_page.load
end

Quando("buscar pelo produto {string}") do |query|
  @query = query
  @home_page.search(query)
  @home_page.search_btn
end

Então("devem ser retornados produtos") do
  expect(@search_page.products[0]).to have_image 
  expect(@search_page.products[0]).to have_name
  expect(@search_page.products[0].name.text).to have_content @query
end

Quando('buscar produto sem preencher o campo Search') do
  @home_page.search
  @home_page.search_btn
end

Entao('deve aparecer a mensagem: {string}') do |message|
  expect(@search_page.search_message).to eql message
end
