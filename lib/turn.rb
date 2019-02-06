def turn
  

def valid_move?(board, index)
  index >= 0 && index < 10 && !position_taken?(board, index)
end

def position_taken?(board, index)
  board[index].to_s.strip != ""
end