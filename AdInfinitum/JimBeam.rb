gets.to_i.times{
  (x1, y1, x2, y2, xm,ym) = gets.split.map{|i| i.to_f}

  if x1-x2 != 0 && xm != 0
    a = (y1-y2).to_f/(x1-x2)
    b = (x1*y2-x2*y1).to_f/(x1-x2)
    c = ym/xm.to_f

    if c-a != 0.0
      x0 = b/(c-a).to_f

      if (x0 > 0.0 && x0 < xm && x0 >= x1 && x0 <= x2) || (x0 > 0.0 && x0 < xm && x0 <= x1 && x0 >= x2) || (x0 < 0.0 && x0 > xm && x0 <= x1 && x0 >= x2) || (x0 < 0.0 && x0 > xm && x0 >= x1 && x0 <= x2)
        puts 'NO'
      else
        puts 'YES'
      end
    elsif b != 0.0
      puts 'YES'
    elsif (x1 > 0.0 && x1 < xm) || (x2 > 0 && x2 < xm) || (x1 < 0.0 && x1 > xm) || (x2 < 0 && x2 > xm)
      puts 'NO'
    else
      puts 'YES'
    end
  elsif x1-x2 == 0.0 && xm == 0.0 && x1 == 0.0
    if (y1 > 0.0 && y1 < ym) || (y2 > 0.0 && y2 < ym) || (y1 < 0.0 && y1 > ym) || (y2 < 0.0 && y2 > ym)
      puts 'NO'
    else
      puts 'YES'
    end
  elsif x1 - x2 != 0.0 && xm == 0.0
    b = (x1*y2-x2*y1)/(x1-x2).to_f

    if(b > 0.0 && b < ym && x1 <= 0 && x2 >= 0) || (b > 0.0 && b < ym && x1 >= 0 && x2 <= 0) || (b < 0.0 && b > ym && x1 >= 0 && x2 <= 0) || (b < 0.0 && b > ym && x1 <= 0 && x2 >= 0)
      puts 'NO'
    else
      puts 'YES'
    end
  elsif x1-x2 == 0.0 && xm != 0.0
    c = ym/xm.to_f
    y0 = x1 * c

    if (y0 >= y1 && y0 <= y2 && x1 > 0.0 && x1 < xm) || (y0 >= y1 && y0 <= y2 && x1 < 0.0 && x1 > xm) || (y0 <= y1 && y0 >= y2 && x1 < 0.0 && x1 > xm) || (y0 <= y1 && y0 >= y2 && x1 > 0.0 && x1 < xm)
      puts 'NO'
    else
      puts 'YES'
    end
  else
    puts 'YES'
  end
}