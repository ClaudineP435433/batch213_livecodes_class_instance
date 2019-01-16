class SlotMachine
  # SOLTION 1 WITH SCORE TABLE
    SCORES = {
      'joker' => { '3times' => 50, '2times' => 25 },
      'star' => { '3times' => 40, '2times' => 20 },
      'bell' => { '3times' => 30, '2times' => 15 },
      'seven' => { '3times' => 20, '2times' => 10 },
      'cherry' => { '3times' => 10, '2times' => 5}
    }

  def score(array)
    if array.uniq.length == 1
      SCORES[array[0]]['3times']
    elsif array.uniq.length == 2 && array.include?('joker')
      sorted_array = array.sort
      SCORES[sorted_array[1]]['2times']
    else
      0
    end
  end


  # SOLUTION 2 WITH MATH TECHNIQUE

  # SYMBOLS = ["cherry", "seven", "bell", "star", "joker"]

  # def score(reels)
  #   if reels.uniq.size == 1
  #     return (SYMBOLS.index(reels[0]) + 1) * 10
  #   elsif reels.uniq.size == 2 && reels.include?('joker')
  #     return (SYMBOLS.index(reels.sort[1]) + 1) * 5
  #   else
  #     return 0
  #   end
  # end

end
