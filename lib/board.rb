 class Board
    attr_accessor :cells

    def initialize
        @cells = Array.new(9, " ")
    end

    def reset!
        @cells = Array.new(9, " ")
    end

    def display
        puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} "
        puts "-----------"
        puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} "
        puts "-----------"
        puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} "
      end

    def input_to_index(input)
        index = input - 1 
    end

      def position(input)
        @cells[input.to_i - 1]
      end

      def full?
        @cells.none? {|v| v == " "}
      end

      def turn_count
        @cells.count {|v| v == "X" || v == "O"}
      end

      def taken?(input)
        position(input) == "X" || position(input) == "O" ? true : false
      end

      def valid_move?(input)
       input.to_i.between?(1,9) && !taken?(input)
      end

      def update(input)
        @cells[input.to_i - 1] = players.token
      end
 end