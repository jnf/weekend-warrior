def leap_year?(year)
  even_div = -> (mod) { year % mod == 0 }
  # evenly divisible by 4 and 
  # !(evenly divisible by 100) unless also evenly divisible by 400
  (even_div.call(4)) && (!even_div.call(100) || even_div.call(400))
end
