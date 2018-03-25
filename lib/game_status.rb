# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [ [0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6] ]

def WON?(board)
  WIN_COMBINATIONS.each do |win_condition|
    if ((win_condition[0] == "X" && win_condition[1] == "X" && win_condition[2] == "X") ||
        (win_condition[0] == "O" && win_condition[1] == "O" && win_condition[2] == "O"))
        return win_condition
    end
  end
  return false
end
