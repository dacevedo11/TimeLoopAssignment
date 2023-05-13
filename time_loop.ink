VAR death_counter = 0
VAR betrayed = false
VAR hasStone = false

-> intro

=== intro === 
You are a Human Bard. You are travelling with your party, consisting of Olga (Human Barbarian), Simon (Half-Elf Sorceror), and Orianna(Human Rogue). You all travel together, but you aren't registered with the Adventurer's Guild.

* [Next]

You and your friends are having drinks at the local tavern. Orianna informs the party that she overheard some adventurers talking about some rare stone located in the mountains beyond an ancient Dwarf settlement.

** [Next]

Intriguded, the group agrees to investigate. You make your way there and find the entrance to the ancient Dwarven city. It takes some time but you manage to make your way through the city. You find what seems to be some kind old throne room; Connected to this room is a stairway that leads to the mountains peak. It's a long climb, so you set up camp for the night. At first light, you hear Olga scream "Rise and shine, everyone!". You all get up, pack up, and head for the top. After finally reaching the peak, you find a shrine. At the center of the Shrine, you see a pedestal with some kind of orb. You approach it and immediately recongize it. 

This isn't just some rare stone... It's the Philsopher's Stone!

***[Next]

You remember seeing it in books when you were a kid. Bards sing about it everywhere from Stardew to Dourne. You approach the stone, as everyone else stands there in awe. As you reach out your hand, it begins to glow. You can't really describe it, but it's giving off a malicious aura. Suddenly, you hear the most terrifying roar.

****[Next]

The ground trembles. You want to run, but your body won't respond. A large shadow flies quickly through the sky. The sound of it moments behind. You hear a large crash as the ground shakes uncontrollably. You turn around, and there it is, blocking the way out; A dragon. 

It's colossal and white as snow. Terrifying, but also magnificent. The songs don't do it justice. It speaks in a deafening and hair-raising. voice. 
"Pahlok joorre! Dir ko maar."

*****[Next]

Simon is able to translate using his Comprehend Languages spell.
Simon: "Arrogant Mortals... Die in terror..."

Without hesitiation, Olga runs at the dragon, axe in hand, screaming.

The dragon roars, then breathes an icy breath. Olga is frozen in her tracks. He spins and uses his tail to smash her into pieces. Suddenly, the dragon lunges in your direction. It uses it's jaw to gnaw at the air. In it's mouth is Orianna. He was invisible, and trying to sneak away, but the dragon knew it. The dragon leans it's neck back, then throws him flying through the air. 

Simon attempts a fire ball to no avail. The dragon is completely unphased. It turns it's attention to Simon. Knowing there was nothing he could do, Simon stands there in his last moments, as the dragon chomps him in half...

******[Next]

Finally, the dragon turns it's gaze to you, the one too petrified to even move. It walks towards you, slowly, on all fours. Each step is it's own tremor. 

"Come for my stone, have you? Hmmmmm. I have half a mind to let you have it, if only to watch it drive you mad. But I think not."
"Remember my name mortal, I am Edelweiss! Zu'u unslaad! I am eternal! I am time itself! FO KRAH DIIN!"

Those are the last words you hear, as Edelweiss blasts you with it's ice breath. You look past Edelweiss at at the horizon, you see the sun set. Then, everything goes black...
*******[........]
~ death_counter = death_counter + 1

-> main

=== main ===
{hasStone == true: -> main.Stone}
Olga: That's first light. Rise and shine, everyone!

{
- death_counter == 1: You wake up, screaming.
- death_counter > 1: You quickly sit up in your bag.

}

{betrayed == true: That damned Orianna can't be trusted...}


* {death_counter == 1} ["What a weird dream..."]
    You all get up, pack up, and head for the top. You find a shrine at the top. It seems familiar somehow. At the center you see a shrine with an orb. You don't know why, but you feel something is wrong. Then, you hear a gut-wrenching roar. It feels as though your stomach dropped to the floor. You hear the others shout, "Dragon!" 
    
    Edelweiss lands on the mountaintop, shaking the entire shrine. "Ah, you're back." 
    
    ** [Next]
        Olga charges at Edelweiss. It freezes her in her tracks, then crsuhes her. As you watch your friend die, again, it starts coming back to you. 
        
        You turn to Orianna. You watch him as he turns invisble. Again, the dragon senses him. It grabs him with it's enormous mouth and throws him into the distance. Simon launches his fireball and again, you watch Simon get bit in half. 
        
        Edelweiss turns to you, grinning, with it's giant teeth showing through it's smile. "Remember me? I told you, mortal. Zu'u unslaad. I am not bound to the constraints of time. And until I grow bored of you, you will die over and over again. FO KRAH DIN!"
        
        As you freeze to death, you look up at the horizon.
        ***[...sunset]
        ~ death_counter = death_counter + 1
        -> main
        
+ {death_counter>1} ["I'm... alive]
    You now realize that this wasn't a dream. You died. Not once, but {death_counter} times. Knowing what's at the top of the mountain, you tell everyone what happened. 
    
    Of course, they don't believe you. They tell you that you are just being paranoid. You beg them not to go up, but they refuse to listen. With or without you, they start climbing the mountain.
    
    ++ [Run away]
        You decide that your friends are a lost cause. You already know what's waiting up there, and if they won't listen, there's nothing you can do to stop it. 
        
        You run back the way you came. Eventually, you find the road that led you there. The sun just set, and you come across a party of travellers. Not just any travellers, bandits. They tell you to give them whatever food you have, but you don't have anything to give, so they stab you and leave you to die on the side of the road like a dog. As everything slowly turns to black, you hear a faint roar coming from the tallest mountain. 
            +++[.....]
            ~ death_counter = death_counter + 1
            -> main
    ++ [Chase after them]
        You decide you're going to save your friends. You go as fast as you can, hoping you can get there before it's too late.
        
        As you ascend the mountain, you hear that same roar. Edelweiss. You start climbing faster. You finally make it to the shrine at sunset... But you're too late. All your friends are dead. They were all frozen by that damned dragon. 
        
        "I was beginning to wonder when you would show up". Edelweiss stood there, menacingly, over all their frozen corpses. Better luck next time. FO KRAH DIIN!"
            +++[.....]
            ~ death_counter = death_counter + 1 
            -> main
        
+ {death_counter > 3} [Sunset?]
    You start to realize that unless something changes, you and your friends are going to continue dying, over and over again. But you realize, that every time so far, the party gets to the summit at sunset. But, what if you get there after dark?
    
    You manage to stall the climb up long enough for it to get dark. So far, so good. You need to decide what to do next.
    
        ++[Enter the shrine]
            Just like before, you approach the pedestal. You reach your hand out to the stone, and like clockwork, you hear Edelweiss's roar. 
            He lands on the mountain. Olga charges. She dies. Orianna tries to sneak away. He dies. Simon casts a spell, he dies too. Edelweiss turns it's attention to you and kills you.
                +++[.....]
                ~ death_counter = death_counter + 1 
                -> main
        ++[Send in Orianna]
            Maybe instead of just walking in, you send in the Rogue to grab the stone. You tell the group you have a plan, and decide it would be best for Orianna to sneak in and grab the stone. 
            
            Orianna turns invisble and walks to the pedestal. To your amazement, there's no roar! He grabs it, and returns to the rest of the party. Just before he hands it to you, he stabs you in the stomach, turns invisble, and makes off with the stone. You lie on the ground, bleeding. Olga and Simon try to help but there's nothing they can do. That damned traitor...
                ~ betrayed = true
                +++[.....]
                ~ death_counter = death_counter + 1 
                -> main
                
+ {death_counter == 6 && betrayed == true} [What else is there?!]
    Everytime I try to touch the stone, Edelweiss appears. But why didn't he appear when Orianna took it? Come to think of it... I never actually grabbed the Philsopher's Stone, did I? I wonder.
    
    Once again, you and your party make your way up to the peak. This time you walk straight up to the orb. You hear Edelweiss's roar. This time, though, you grab the orb.
    
    Edelweiss see this and angrily roar; "Think you can just take my Stone?! How many times must I teach you? I AM INEVITABLE! FO KRAH DIIN"
    
    The icy breath consumed you like before.
    
    ++[But..]
    
    This time, you weren't frozen. The Philsopher's Stone's began to glow. Edelweiss roared again, angrier than ever. 
    
    "It's glowing. The Stone. MY. STONE. Why has it betrayed me! Why would it CHOOSE YOU?" 
    
        +++ [Rewind Time]
            The Philsopher's Stone responds to your will.
            ~ hasStone = true
            ->main

= Stone
You wake up. It's the night before you climb the mountain... There's something in your hand. 

+[It's the Philsopher's Stone!]

Unlike the other times, it's not first light yet. Even Olga is still asleep. You decide to wake Simon and Olga. You tell them Orianna set you all up, and that whatever it at the top of that mountain is nothing but a trap. They're suprised but they believe you. After all, Orianna only looks out for herself. 

With the Philsopher's Stone in hand, you now are the master of time. You all leave Orianna behind, leaving her to whatever fate has in store for her. Way out in the distance, coming from deep in the mountains, you hear an ever so faint roar. And with that, dawn arises.

Fin
-> END

        

    
    

    






-> DONE