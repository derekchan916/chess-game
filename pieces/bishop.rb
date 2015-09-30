require_relative 'piece.rb'
require_relative 'stepping.rb'
require_relative 'sliding.rb'

class Bishop < SlidingPiece
  def initialize(pos, color, board)
    super(pos, color, board, :bishop)
  end

  def move_dirs
    DIAGONAL_DELTA
  end
end
