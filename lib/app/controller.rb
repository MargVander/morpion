  require 'app/model'
  require 'app/view'

  class Controller
    attr_reader :view, :player

    def initialize
      @view = View.new
    end

    def game_init
      params = @view.name_player
      player_one = [params.values[0], "X"]
      player_two = [params.values[1], "O"]
      @player = Player.new(player_one, player_two)

      position = BoardCase.new.board_matrice
      @view.print_board(position)

      turn
    end

      def turn
        i = 1
        while true
        choice_of_player = @view.play_turn(@player.player_one, @player.player_two, i)
        params = BoardCase.new.play_turn(choice_of_player)
        @view.print_board(params)
        i += 1
      end
      end


    end
