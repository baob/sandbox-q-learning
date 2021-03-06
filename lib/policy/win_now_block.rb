require_relative 'win_now'

module Policy
  class WinNowBlock < WinNow

    class << self

      def chosen_move(board, player, moves)
        winning_move(board, player, moves) ||
          blocking_move(board, player, moves) ||
          random_move(moves)
      end

      def blocking_move(board, player, moves)
        winning_move(board, other_player(player), moves)
      end

      # TODO: this class also 'knows' about player numbering,
      # extract to another class sometime
      #
      def other_player(player)
        3 - player
      end
    end

  end
end
