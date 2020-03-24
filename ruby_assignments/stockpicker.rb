def stock_picker(prices)
    
  #recursive function to find the best day to sell on when bought on the first day (you can't sell before you buy)
  def select_best_pair(prices, accu=[])
    
    #helper to find that pair on each day
    def find_best_ratio_v_d1(prices)
      [prices[0], prices.max]
    end
       
    best_pair = accu
    if prices.length < 2
      return best_pair
    else
      best_pair_el = find_best_ratio_v_d1(prices)
      best_pair.push(best_pair_el)
      select_best_pair(prices.slice(1, prices.length), best_pair)
    end
  end

  best_prof_arr = select_best_pair(prices)
  best_profit = best_prof_arr.map{|x| x[1] - x[0]}
  best_profit_days = [prices.index(best_prof_arr[best_profit.index(best_profit.max)][0]), prices.index(best_prof_arr[best_profit.index(best_profit.max)][1])]

end

p stock_picker([17,3,6,9,15,8,6,1,10])



