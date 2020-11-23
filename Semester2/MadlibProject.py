import random
madLibs = ["","","","","","","","","","","",""]
play = True
while play:
 madLibs[0] = input("enter a character name:")
 madLibs[1] = input("enter a location:")
 madLibs[2] = input("Enter a girl's name:")
 madLibs[3] = input("Enter a second location(your home):")
 madLibs[4] = input("Enter a enemy's name:")
 madLibs[5] = input("Enter a monster/animal's name:")
 madLibs[6] = input("Enter a place/castle:")
 madLibs[7] = input("Enter a man's name:")
 madLibs[8] = input("Enter a name for a cave:")
 madLibs[9] = input("Enter a sword name:")




 print ("The story will be about your imagination in a mythical land.")
 print("This was made by Constantine Linardakis and Euan Lamprecht- Make sure you use capitals")
 print("Once upon a time,", madLibs[0], "who was on there way to the", madLibs[1])
 print("There was a goal to capture", madLibs[2], "and bring her back to ", madLibs[3])
 print("While they had the thought to get", madLibs[2], "They had to think about the main enemy", madLibs[4], "who was keeping her hostage.")
 print("They had to invade the", madLibs[6], "and also at the same time go through the", madLibs[5], "which was very dangerous")
 print(madLibs[0], "had started their journey to the", madLibs[6], ".")
 print("On the way", madLibs[0], "ran into a sorcerer named", madLibs[7], "and he said")

 question = input('Would you like to play the game?, Yes or No: ')
 if question == 'Yes':
   target_num = random.randint(1, 10)
   guess_num = int(input('Guess a number between 1 and 10 until you get it right : '))
   while target_num != guess_num:
     guess_num = int(input('To high or to low : '))
   print('Well guessed!')
   print("Luckily I didn't kill you. You may proceed", madLibs[0], "!")

 elif question == 'No':
   print("Okay move along then.")

 print("As you move along you realize how close you are to", madLibs[6], "so you stop at", madLibs[8])
 print("Suddenly the", madLibs[5], "comes out of no where, so you grab your", madLibs[9], "and slay it" )


import random
madLibs = ["","","","","","","","","","","",""]
play = True
while play:
    madLibs[0] = input("Enter a character name:")
    madLibs[1] = input("Enter a location:")
    madLibs[2] = input("Enter a girl's name:")
    madLibs[3] = input("Enter a second location(your home):")
    madLibs[4] = input("Enter a enemy's name:")
    madLibs[5] = input("Enter a monster/animal's name:")
    madLibs[6] = input("Enter a place/castle:")
    madLibs[7] = input("Enter a man's name:")
    madLibs[8] = input("Enter a name for a cave:")
    madLibs[9] = input("Enter a sword name:")



    print("The story will be about your imagination in a mythical land.")
    print("This was made by Constantine Linardakis and Euan Lemprecht- Make sure you use capitals.")
    print("Once upon a time,",madLibs[0],"who was on there way to the",madLibs[1])
    print("There was a goal to capture", madLibs[2], "and bring her back to", madLibs[3])
    print("While they had the thought to get", madLibs[2],"They had to think about the main enemy",madLibs[4])
    print("They had to invade the", madLibs[6], "and also at the same time go through the", madLibs[5], "which was dangerous.")
    print(madLibs[0],"had started their journey to the",madLibs[6],".")
    print("On the way",madLibs[0],"ran into a sorcerer named",madLibs[7],"and he said.")

    question = input("Would you like to play the game?, Yes or No:")
    If question == "Yes":
        target_num = random.randint(1,10)
        guess_num = int(input('Guess a number between 1 and 10 until you get it right:'))
        while target_num != guess_num:
            guess_num = int(input("To high or to low :"))
        print("Well guessed!")
        print("Luckily I didn't kill you. You may proceed", madLibs[0],"!")

    elif question == "No":
        print("Okay move along then.")

    print("As you move along you realize how close you are to",madLibs[6],"so you stop at",madLibs[8])
    print("Suddenly the", madLibs[5], "comes out of no where, so you grab your", madLibs[9], "and slay", madLibs[5])
    print("This story may continue for ever.")
