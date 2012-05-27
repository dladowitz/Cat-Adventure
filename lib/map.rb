class Room

  attr_accessor :name, :description, :paths

  def initialize(name, description)
    @name = name
    @description = description
    @paths = {}
  end

  def go(direction)
    @paths[direction]
  end

  def add_paths(paths)
    @paths.update(paths)
  end

end

home = Room.new("Meow Meow's House",
                            %q{
You are home at 106 Santa Cruz rd in Arcadia.
You want to get away from all the baby madness.
You decide to get away and bring a bear along.
You think to yourself you can go to 'Yosemite' or 'Antigua'.

Where do you decide go to?
1. yosemite
2. antigua
})



yosemite = Room.new("The Garage Packing",
                    %q{
Ok, you're going to cook some bacon in Yosemite. Yeah!

Lets see what we need, a cooler and charcoal and bacon.
Everything else is optional.
oh, except the cats.

What do you do with Dusty and Aiko while your away?


You can:
1. leave them alone with an auto feeder
2. find a pet sitter

What do you do?
})

you_win_with_bacon = Room.new("Back Home",
                          %q{
Great decision!

You got to make bacon and the cats where happy.
You come home to 2 purring cats.

You won!
The end.
})


you_loose_with_pee = Room.new("Back Home",
                              %q{
Yosemite and the bacon was great..

but when you come home Dusty has peed on everything.
The house is swimming pool of pee.

You lost.
})

antigua = Room.new("In your room packing",
                    %q{
Ok, you're going to visit JP and Regina!"
Get your bed bug spray out."

How are we going to get there?"

We can:
1. buy an rv
2. fly

What should we do?"

})


buy_rv = Room.new("Our new RV",
                   %q{
We bought and RV!

Ok, lets start packing the RV
Guide book, humidifier, shoes, cats.......oh cats.

What should we do with the cats?

We could:
1. bring them in the rv
2. let grace babysit them

What do you want to do?

})

fly = Room.new("Luggage Closet",
                   %q{
Hooray we are flying.

Ok, lets pack our backpack.
Guide book, hat, cats.......oh cats.
What should we do with the cats

We can:
1. take them with us on the plane
2. let grace babysit them

What do you want to do?

})

cats_in_rv = Room.new("Sitting shotgun with Dusty",
                            %q{
Good choice.

The cats love the RV.
The Border Guards love Dusty so much.
They decide to lets us in with no bribe!

You won!
The end.
})

end_lonely_dusty = Room.new("Back Home",
                     %q{
The trip was great.
Though when we get back the new baby loves Aiko too much.
Grace won't let you take her home.

Now Dusty is too lonely.
She scratches up everything and eats the fish.

You lost.
})





end_dusty_in_jail = Room.new("Guatemala City",
                    %q{
Hooray we are on the way on Guate-Guate Air

On no, when we land the officials want to see the cats records.
We don't have any so Aiko and Dusty land in quarantine for 30 days!

When they get out they are hardened criminals.

You lost
The end
})





home.add_paths({
                   'yosemite' => yosemite,
                   'antigua'=> antigua

               })

yosemite.add_paths({
                       'leave them alone with an auto feeder' => you_loose_with_pee,
                       'find a pet sitter' => you_win_with_bacon
                   })

antigua.add_paths({
                       'fly' => fly,
                       'buy an rv' => buy_rv
                  })

buy_rv.add_paths({
                         'bring them in the rv' => cats_in_rv,
                         'let grace babysit them' => end_lonely_dusty
                     })

fly.add_paths({
                         'take them with us on the plane' => end_dusty_in_jail,
                         'let grace babysit them' => end_lonely_dusty
                     })




START = home