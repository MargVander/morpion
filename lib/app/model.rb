  class Player
    attr_reader :player_one, :player_two

    def initialize(player_one, player_two)
      @player_one = player_one
      @player_two = player_two
    end
  end

  class BoardCase
    attr_accessor :a1, :a2, :a3, :b1, :b2, :b3, :c1, :c2, :c3
    def initialize
      @a1 = a1
      @a2 = a2
      @a3 = a3
      @b1 = b1
      @b2 = b2
      @b3 = b3
      @c1 = c1
      @c2 = c2
      @c3 = c3
    end

    def board_matrice
    a1 = " "
    a2 = " "
    a3 = " "
    b1 = " "
    b2 = " "
    b3 = " "
    c1 = " "
    c2 = " "
    c3 = " "
    matrice = [[" #{a1} "," #{a2} "," #{a3} "] , [" #{b1} "," #{b2} "," #{b3} "] , [" #{c1} "," #{c2} "," #{c3} "] ]
    end


  end
