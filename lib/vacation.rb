def prompt()
  print ">"
end

def Yosemite_Vally()
  puts "Ok, you're going to cook some bacon in Yosemite. Yea!"
  puts ""
  puts "Lets see what we need, a cooler and charcoal and bacon."
  puts "Everything else is optional."
  puts "oh, except the cats."
  puts ""
  puts "What do you do with Dusty and Aiko while your away?"
  puts "You can:"
  puts "1. Leave them alone with an auto feeder."
  puts "2. Find a pet sitter."
  puts "What do you do?"
  puts ""

  while  true
  prompt; yosemite_cats = gets.downcase.chomp

    if yosemite_cats.include? "2" or yosemite_cats.include? "pet" or yosemite_cats.include? "sitter"
      puts ""
      puts "Great decision!"
      puts "You got to make bacon and the cats where happy."
      puts "You come home to 2 purring cats"
      puts "The end."
      Process.exit(0)
    elsif yosemite_cats.include? "1" or yosemite_cats.include? "alone" or yosemite_cats.include? "leave"
      puts ""
      puts "Yosemite and the bacon was great.."
      puts "Oh no, when you come home Dusty has peed on everything."
      puts "The house is swimming pool of pee."
      puts "The end."
      Process.exit(0)
    else
      puts "I don't know what that means"
      puts "Tell me again in English"


    end
  end

end

def Central_America()
  puts "Ok, you're going to visit JP and Regina!"
  puts "Get your bed bug spray out."
  puts ""
  puts "How are we going to get there?"
  puts "We can 'Buy an RV' or 'Fly'"
  puts ""
  puts "What should we do?"
  puts ""

  while  true
    prompt; transport = gets.downcase.chomp

    if transport.include? "buy" or transport.include? "rv"
      puts ""
      puts "So we are buyin' an RV are we."
      puts ""
      puts "Ok, lets start packing the RV"
      puts "Guide book, humidifier, shoes, cats.......oh cats."
      puts ""
      puts "What should we do with the cats"
      puts "We could: "
      puts "'Bring them in the RV' or 'Let Grace babysit them'"
      puts "What do you want to do?"
      puts ""
          while true
          prompt; cats_and_rv = gets.downcase.chomp
            if  cats_and_rv.include? "bring" or  cats_and_rv.include? "rv"
              puts ""
              puts "Good choice. The cats love the RV."
              puts "The Border Guards love Dusty so much."
              puts "The decide to lets us in with no bribe!"
              puts "The end."
              puts ""
              Process.exit(0)
            elsif   cats_and_rv.include? "grace" or  cats_and_rv.include? "baby"
              puts ""
              puts "They trip was great."
              puts "Though when we get back the new baby loves Aiko too much."
              puts "Grace won't let you take her home"
              puts ""
              puts "Now Dusty is too lonely."
              puts "She scratches up everything and eats the fish."
              puts "The end"
              puts ""
              Process.exit(0)
            else
              puts "Man, I don't know what '#{cats_and_rv}' means."
              puts "Is that Mandarin or something?"
              puts "Try again."
            end
          end
    elsif transport.include? "fly"
      puts ""
      puts "Hooray we are flying."
      puts ""
      puts "Ok, lets pack our backpack"
      puts "Guide book, hat, cats.......oh cats."
      puts "What should we do with the cats"
      puts ""
      puts "We can 'Take them with us on the plane' or 'Leave them with Grace'."
          while true
            prompt; cats_and_fly = gets.downcase.chomp
            if  cats_and_fly.include? "take" or  cats_and_fly.include? "plane"  or  cats_and_fly.include? "bring"
              puts ""
              puts "Hooray we are on the way on Guate-Guate Air "
              puts ""
              puts "On no, when we land the officials want to see the cats'' records."
              puts "We don't have any so Aiko and Dusty land in quarantine for 30 days!"
              puts ""
              puts "When they get out they are hardened criminals."
              puts "The end"
              puts ""
              Process.exit(0)
            elsif   cats_and_fly.include? "grace" or  cats_and_fly.include? "baby"
              puts ""
              puts "They trip was great."
              puts "Though when we get back the new baby loves Aiko too much."
              puts "Grace won't let you take her home"
              puts ""
              puts "Now Dusty is too lonely."
              puts "She scratches up everything and eats the fish."
              puts "The end"
              puts ""
              Process.exit(0)
            else
              puts "Man, I don't know what '#{cats_and_fly}' means."
              puts "Do you understand the words coming out of my mouth?"
              puts "Try again."
            end
          end
    else
      puts "I don't know what that means"
      puts "Tell me again and use your words"


    end
  end

end
def start()
  puts ""
  puts "You are home in Arcadia."
  puts "You want to get away from all the baby madness."
  puts "You decide to get away and bring a bear along."
  puts "You can go to 'Yosemite' or 'Antigua'."
  puts "Where do you go to?"
  puts ""



  while true
    prompt; location = gets.downcase.chomp

    if location.include? "yos"
      Yosemite_Vally()
    elsif location.include?  "ant" or  location.include? "guat"
     Central_America()
    else
      puts "I don't know where that is"
      puts "Try again."
      puts ""
    end
  end
end


start()