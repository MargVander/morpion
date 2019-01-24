  require 'app/model'
  require 'app/view'

  class Controller
    attr_reader :view, :player

    def initialize
      @view = View.new
    end

    def game_init
      params = @view.name_player           # => les Noms des joueurs
      player_one = [params.values[0], "X"] # => on récupère l'argument 0 qui est le nom du premier player + son token
      player_two = [params.values[1], "O"] # => même chose

      @player = Player.new(player_one, player_two)

      # => On initialise et affiche le plateau
      position = BoardCase.new.board_matrice
      @view.print_board(position)

      # => Fonction qui lance la partie
      turn
    end

    def turn
      i = 1
      new_game = BoardCase.new

      while true
      puts ""
      puts "Morpion n°#{i}".yellow
      puts ""

      # => On demande au joueurs l'emplacement qu'on return dans choice_of_player
      choice_of_player = @view.play_turn(@player.player_one, @player.player_two, i)

      params = new_game.play_turn(choice_of_player)

      # => On print notre nouvelle matrice
      @view.print_board(params)

      i += 1
      end
    end
  end
