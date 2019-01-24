  class View
    attr_accessor :player_one, :player_two
    def name_player
      puts "Entrez le nom du joueur 1"
      name_of_player_one = gets.chomp.to_s

      puts "Entrez le nom du joueur 2"
      name_of_player_two = gets.chomp.to_s
      puts ""

      return params = { player_one: name_of_player_one, player_two: name_of_player_two }
    end


    def print_board(arr)
      puts ""
      puts `clear`
      puts "  |  A  |  B  |  C  |"
      puts "-" * 22
      puts "1 | #{arr[0][0]} | #{arr[0][1]} | #{arr[0][2]} |"
      puts "-" * 22
      puts "2 | #{arr[1][0]} | #{arr[1][1]} | #{arr[1][2]} |"
      puts "-" * 22
      puts "3 | #{arr[2][0]} | #{arr[2][1]} | #{arr[2][2]} |"
      puts "    "
    end

    def play_turn(p1, p2, i)

      if i.odd?
      puts "#{p1[0]}, choisis une case :"
      choice_player_one = gets.chomp.downcase
      return [choice_player_one, "X"]
    elsif i.even?
      puts "#{p2[1]}, choisis une case :"
      choice_player_two = gets.chomp.downcase

      return [choice_player_two, "0"]
    end

    end
  end
