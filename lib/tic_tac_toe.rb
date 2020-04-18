require 'pry'  
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
 WIN_COMBINATIONS.each do |combo|
 if @board[combo[0]] == ("X") && 
   @board[combo[1]] == ("X") && 
   @board[combo[2]] == ("X") || 
   @board[combo[0]] == ("O") && 
   @board[combo[1]] == ("O") && 
   @board[combo[2]] == ("O")
   return combo
  end
 end
    false
    end
    
def full?
  @board.none? {|box| box==" "}
end

def draw?
 full? && !won? ? true : false
end
end

def over?
 draw? || won?
end

def winner
  
    @board.each do |index|
    if index == "X" || index == "O"
  end
  
  def play
    until the game is over
  take turns
end
 
if the game was won
  congratulate the winner
else if the game was a draw
  tell the players it ended in a draw
end
  end