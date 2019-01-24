  require 'app/controller'

  class Router
    attr_reader :controller

    def initialize
      @controller = Controller.new
    end

    def perform
      puts "Bienvienue dans notre morpion hygiènique !"

      while true
        puts "1. Nouvelle partie"
        puts "2. Quittez le jeux."
        params = gets.chomp.to_i

      case params
      when 1
        puts "C'est partis !"
        puts ""
        @controller.game_init

      when 2
        puts "À bientôt"
        break

      else
        puts "ce choix n'existe pas merci de réessayer."
      end
    end
  end
end
