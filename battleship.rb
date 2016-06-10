require "pry-byebug"
grid1 =[[0,0,1,1,1,1,0,0,0,0],
        [0,0,0,1,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0,0],
        [1,1,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0,0],
        [0,0,0,1,0,0,0,0,0,0],
        [0,0,0,1,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0,0],
        [1,1,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,1,1]]


def let2num(letter)
  case letter
  when "a"
    row=0
  when "b"
    row=1
  when "c"
    row=2
  when "d"
    row=3    
  when "e"
    row=4
  when "f"
    row=5
  when "g"
    row=6
  when "h"
    row=7
  when "i"
    row=8
  when "j"
    row=9      
  end
  return row
end

def get_hash(name,num_win,num_lost)
  
  result= {
    name: name,
    win: num_win,
    lost: num_lost
  }
  return result
end

def battleship(grid)  
  puts "Welcome to Battleship. "
  for line in grid
    print line.join(" ")
    puts
  end

  count_ship=0
  while (count_ship<10)
    puts "Please enter grid position: "
    guess=gets.chomp.downcase.split(//)
    column=(guess[1].to_i)
    letter=guess[0]
    row=let2num(letter)
    # checking if the codition is met
    # binding.pry
    if (grid[row][column]==1)      
      grid[row][column]="H"
      puts " right guess; next ship"
      count_ship+=1
    else
      grid[row][column]="M"
      puts " wrong guess; try again"
    end
    for line in grid
      print line.join(" ")
      puts
    end
  end 
  puts "CONGRATULATION YOU WON!"
  # # num_win
  # puts "Please enter name: "
  # name=gets.chomp
  # final_score=get_hash(name,num_win,num_lost)
  # puts final_score
  # high_scores={}

end
battleship(grid1)