# satisfies this lab
def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  input_to_index(user_input)
  move(board, index, user_char)
  display_board(board)
end

# Checks board if index is valid (0 to 8) and if board at index is taken using #position_taken?
def valid_move?(board, index)
    if index.between?(0, 8) && (position_taken?(board, index) == false)
      true
    elsif (index.between?(0,8) == false) || (position_taken?(board, index) == true)
      false
    end
end

# Checks board at index for X or O occupancy
def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    true
  elsif board[index] == " " || board[index] == "" || board[index] == nil
    false
  end
end

# draws [board] matrix
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# Converts user input to integer array index
def input_to_index(user_input)
  index = user_input.to_i - 1
end

# Sets board at index to user_char with default value X
def move(board, index, user_char="X")
  board[index] = user_char
end
