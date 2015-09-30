require_relative 'piece.rb'
require_relative 'stepping.rb'
require_relative 'sliding.rb'

class Knight < SteppingPiece
  def initialize(pos, color, board)
    super(pos, color, board, :knight)
  end

  def move_dirs
    KNIGHT_DELTA
  end
end
