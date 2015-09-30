require_relative 'piece.rb'
require_relative 'stepping.rb'
require_relative 'sliding.rb'

class Queen < SlidingPiece
  def initialize(pos, color, board)
    super(pos, color, board, :queen)
  end

  def move_dirs
    LATERAL_DELTA + DIAGONAL_DELTA
  end
end
