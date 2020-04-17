  
class TicTacToe

  WIN_COMBINATIONS = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [6, 4, 2]
  ]

def initialize
  @board = Array.new(9, " ")
end

def display_board
  puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
  puts "-----------"
  puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
  puts "-----------"
  puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(index, token)
# index is 0, token is index X 
@board[index]=token
end
def position_taken?(index)
  !( @board[index].nil? || @board[index] == " " )
    
  end
  
def valid_move?(index)
  index.between?(0,8) && !position_taken?(index)
end

def turn_count
  turn = 0
b  @oard.each do |index|
    if index == "X" || index == "O"
      turn += 1
    end
  end
  return turn
end

def current_player
  #if the turn count is an even number, that means O just went, so the next/current player is X
  num_turns = turn_count
  if num_turns % 2 == 0
    player = "X"
  else
    player = "O"
  end
  return player
end

def turn
  puts "Please choose a number 1-9:"
  user_input = gets.chomp
  index = input_to_index(user_input)
  if valid_move?(index)
    player_token = current_player
    move(index, player_token)
    display_board
  else
    turn
  end
end
end

def valid_move?(index)
  index.between?(0,8) && !position_taken?(index)
end

def turn_count
  turn = 0
  @board.each do |index|
    if index == "X" || index == "O"
      turn += 1
    end
  end
  return turn
end

def current_player
  #if the turn count is an even number, that means O just went, so the next/current player is X
  num_turns = turn_count
  if num_turns % 2 == 0
    player = "X"
  else
    player = "O"
  end
  return player
end

def turn
  puts "Please choose a number 1-9:"
  user_input = gets.chomp
  index = input_to_index(user_input)
  if valid_move?(index)
    player_token = current_player
    move(index, player_token)
    display_board
  else
    turn
  end
end
   # return false/nil if there is no win combination present in the board 
   # return the winning combination indexes as an array if there is a win.
  # use your WIN_COMBINATIONS constant in this method.
def won?
 if @board[combo[0]] == ("X")@board[combo[1]] == ("X")@board[combo[2]]==("X"@board[combo[3]] == ("X")@board[combo[4]] == ("X")@board[combo[5]]
    @board[combo[6]] == ("X")@board[combo[7]] == ("X")@board[combo[8]]== ("X") ||
   
  @board[combo[0]]@board[combo[1]]@board[combo[2]]                            @board[combo[3]]@board[combo[4]]@board[combo[5]]
    @board[combo[6]]@board[combo[7]]@board[combo[8]] ==("O") true 
    
  else 
    false
   end
   end
   [index] WIN_COMBINATIONS.each do |[combo[0] == "X" && combo[1] == "X" && combo[2] == "X" || combo[0] == "O" && combo[1] == "O" && combo[2] == "O"
== ("X") || ("O"}
   
  end