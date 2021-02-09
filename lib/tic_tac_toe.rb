require 'pry'
class TicTacToe
  
    WIN_COMBINATIONS = [
      [0,1,2], #Top Row
      [3,4,5], #Middle Row
      [6,7,8], #Bottom Row
      [0,3,6], #Right Row
      [1,4,7], #Middle Vertical
      [2,5,8], #Left Row
      [0,4,8], #Cross 1 
      [2,4,6], #Cross 2
      ]
  
  #assigns an instance variable @board to an array with 9 blank spaces ""
  def initialize(board = nil) 
    @board = board || Array.new(9, " ")
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
  
  def move(index,current_player)
    @board[index] = current_player
  end 
  
  def position_taken?(index)
    !(@board[index].nil? || @board[index] == " ")
  end 
  
  def valid_move?(board,index)
    if index.between?(0,8) && position_taken?(@board,index) == false
        true
    else 
        false
    end
  # position_taken?.to_i.between?(1,9) and not position_taken?(board, position_taken?.to_i - 1)
  end
  
  
  # def turn_count
  #   counter = 0 
  #   @board.each do |board|
  #     if @board == "X" || @board == "O"
  #       counter += 1
  #     end 
  #   end 
  #     return counter
  # end 
  
#   def current_player
#     if turn_count(@board) % 2 == 0 
#       "X"
#     else 
#       "O"
#     end
#   end 
  
#   def turn
#     puts "Please enter 1-9:"
#   user_input = gets.strip
#   index = input_to_index(@user_input)
#   if valid_move?(@board,@index) == true
#     move(board, index, current_player(@board))
#   display_board(@board)
# else
#   turn(@board)
#   end 
#   end 
  
#   def won?
#     @@WIN_COMBINATIONS.detect do |i|
#   @board[i[0]] == @board[i[1]] &&
#   @board[i[1]] == @board[i[2]] &&
#   position_taken?(@board,i[0]) 
#   end 
#   end 
  
#   def full?
#     @board.all?  do |i|
#     #ask if i is equal to X or O 
#     i == "X" || i == "O"  
#     end
#   end 
  
#   def draw?(board)
#     !won?(@board) && full?(@board)
#   end 
  
#   def over?(board)
#     won?(@board)  || draw?(@board) || full?(@board)  
#   end 
  
#     def winner(board)
#     won=won?(@board)
#       if won 
#         @board[won[0]]
#     end  
#   end 
  
#   def play 
#     #until the game is over, keep repeating turns
#     until over?(@board)
#       turn(@board)
#     end 
#   #if there is a draw, put cats game, else put the winner
#     if draw?(@board)
#     puts "Cat's Game!"
#     else 
#       puts "Congratulations #{winner(@board)}!"  
#     end 
#   end   
end   

