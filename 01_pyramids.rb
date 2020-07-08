def full_pyramid
  puts "Salut, bienvenue dans ma super pyramide ! Tape un nombre entre 1 et 25 :"
  print "> "
  number_stage = gets.to_i
  i = 0
  space = number_stage
  diese = 1

  if
    number_stage %2 == 0
    puts "PISS OFF : entre un nombre impair!"

  else
    puts "Voici la pyramide :"
    for i in (1..number_stage/2)

      puts ("|" * space + "#" * diese)
      space -= 1
      diese += 2
    end
    i = number_stage -1
    down = (number_stage/2)
    i.downto(down) do
      puts ("|" * space +  "#" * diese)
      space += 1
      #  if diese > 1
      diese -= 2
      #  puts "#{diese}"
      #  end
    end
  end
end

full_pyramid
