# @informarDados.zoom_out
# @informarDados.scroll_down_page

  Quando("informo os dados de simulacao primeira pagina") do
   @informarDados1 = InformarDados.new
   @informarDados1.load
   @informarDados1.categoria
   @informarDados1.valor_imovel
   @informarDados1.seleciona_uf
   @informarDados1.seleciona_cidade
   sleep(3)
end

Quando("informo os dados de simulacao segunda pagina") do
   @informarDados2 = InformarDados.new
   @informarDados2.load
   @informarDados2.avancar
   sleep(2)
 end
 
Quando("informo os dados de simulacao terceira pagina") do
end

Entao("verifico a lista de produtos") do
end