  class View
    attr_accessor :player_one, :player_two

    # => ON PREND LES NOMS DES JOUEURS
  def name_player
    puts "Entrez le nom du joueur 1"
    name_of_player_one = gets.chomp.to_s

    puts "Entrez le nom du joueur 2"
    name_of_player_two = gets.chomp.to_s
    puts ""

    # => ON LES RETOURNE EN PARAMETRES AU CONTROLLER
    return params = { player_one: name_of_player_one, player_two: name_of_player_two }
  end

  #SELON LE TOUR C'EST AU JOUEUR UN OU DEUX DE JOUER
  def play_turn(p1, p2, i)
    if i.odd?
      puts "#{p1[0]}".upcase.green, "choisis une case :"
      choice_player_one = gets.chomp.downcase

      return [choice_player_one, "X".green]

    elsif i.even?
      puts "#{p2[0]}".upcase.red, "choisis une case :"
      choice_player_two = gets.chomp.downcase

      return [choice_player_two, "O".red]
    end
  end

  # => ON MET À JOUR LE TABLEAU AVEC POUR ARGUMENT NOTRE MATRICE (CF DEF PLAY_TURN)
  def print_board(arr)
    puts ""
    puts `clear`
    puts "  |  A  |  B  |  C  |"
    puts "-".blue * 22
    puts "1 | #{arr[0][0]} | #{arr[1][0]} | #{arr[2][0]} |"
    puts "-".blue * 22
    puts "2 | #{arr[0][1]} | #{arr[1][1]} | #{arr[2][1]} |"
    puts "-".blue * 22
    puts "3 | #{arr[0][2]} | #{arr[1][2]} | #{arr[2][2]} |"
    puts "_".blue * 22
    end
  end
