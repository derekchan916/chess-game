require_relative 'piece.rb'
require_relative 'stepping.rb'
require_relative 'sliding.rb'

class Rook < SlidingPiece
  def initialize(pos, color, board)
    super(pos, color, board, :rook)
  end

  def move_dirs
    LATERAL_DELTA
  end
end
