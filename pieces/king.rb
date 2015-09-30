require_relative 'piece.rb'
require_relative 'stepping.rb'
require_relative 'sliding.rb'

class King < SteppingPiece
  def initialize(pos, color, board)
    super(pos, color, board, :king)
  end

  def move_dirs
    [[-1, -1],
     [-1,  0],
     [-1,  1],
     [ 0, -1],
     [ 0,  1],
     [ 1, -1],
     [ 1,  0],
     [ 1,  1]]
  end
end
