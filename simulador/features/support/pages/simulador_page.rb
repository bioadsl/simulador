class InformarDados < PageHelper
 set_url 'http://www8.caixa.gov.br/siopiinternet-web/simulaOperacaoInternet.do?method=inicializarCasoUso'
 
 #Elementos mapeados

    element :tipoImovel,    '#grupoTipoFinanciamento_input'
    element :valor,         '#valorImovel'
    element :estado,        '#uf_input'
    element :cidade,        '#cidade_input'
    element :proximo1,      '#btn_next1'
    element :rodape,        '#footer'

  #Metodos   
    def categoria
        puts "Informando a categoaria do imovel"
        tipoImovel.click
        tipoImovel.send_keys("Novo")
        sleep(2)
        tipoImovel.send_keys(:down)
        tipoImovel.send_keys(:down)
        sleep(2)
        tipoImovel.send_keys(:enter)
        tipoImovel.send_keys(:enter)
    end
      
    def valor_imovel 
        valor.send_keys('240000')
    end
    
    def seleciona_uf 
        estado.click
        estado.send_keys("DF")
        sleep(2)
        estado.send_keys(:down)
        estado.send_keys(:down)
        sleep(2)
        estado.send_keys(:enter)
        estado.send_keys(:enter)
    end    
   
    def seleciona_cidade
        cidade.click
        cidade.send_keys("BRASILIA")    
        sleep(2)
        cidade.send_keys(:down)
        cidade.send_keys(:down)
        sleep(2)       
        cidade.send_keys(:enter)
        cidade.send_keys(:enter)
    end
  
    def avancar 
        proximo1.click
    end
     
    def zoom_out
      rodape.send_keys(:control).send_keys(:subtract)
    end  

    def scroll_down_page
      page.execute_script("window.scrollTo(0,-500)")
    end
    


end