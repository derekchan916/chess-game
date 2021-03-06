require_relative 'piece.rb'
require 'byebug'

class SteppingPiece < Piece
  attr_reader :move_direction, :board

  def initialize(pos, color, board, move_direction)
    super(pos, color, board)
    @move_direction = move_direction
  end

  def moves
    moves = []
    x, y = pos

    move_dirs.each do |(dx, dy)|
      new_pos = [x + dx, y + dy]
      if board.in_bounds?(new_pos) &&
        !board.occupied_by_team?(new_pos, color)
        moves << new_pos
      end
    end

    moves
  end
end
