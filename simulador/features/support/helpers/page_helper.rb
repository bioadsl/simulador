require_relative "file_helper.rb"



class PageHelper < SitePrism::Page
  include FileHelper

  element :loading_bar, "#loading-bar"
#
#  def initialize
#    @login = LoginPage.new
#  end
#
#  def acessar_home
#    @login.load
#    @login.realizar_login
#  end

  def mudar_foco
    switch_to_window(windows.last)
  end

  def nr_random
    SecureRandom.random_number(11 ** 10)
  end

  def aguardar_carregamento
    puts "Aguardando carregamento"
    wait_until_loading_bar_invisible
  end
end
