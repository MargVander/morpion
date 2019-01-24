  require 'app/controller'

  class Router
    attr_reader :controller

    def initialize
      @controller = Controller.new
    end

    def perform

      while true
        puts ""
        puts ""
        puts ""
        puts ""
        puts ""
        puts "    |￣￣￣￣￣￣|"
        puts "    |     TIC    |"
        puts "    |     TAC    |"
        puts "    |     TOE    |"
        puts "    | ＿＿＿＿＿_| "
        puts "         ||"
        puts "  🔥🔥🔥  ||"
        puts "༼ つ ◕_◕ ༽つ"
        puts "+:-:+:-:+ ".yellow
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
