def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def valid_move?(board, index)
  index >= 0 && index < 10 && !position_taken?(board, index)
end

def position_taken?(board, index)
  board[index].to_s.strip != ""
end

def move(board, index, type = 'X')
  if valid_move?(board, index)
    board[index] = type
  end
end

def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets)
  move(board, index)
end
    