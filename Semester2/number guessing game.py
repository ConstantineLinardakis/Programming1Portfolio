import random

guessesTaken = 0

print('Hello! What is your name?')
myName = input()

print(myName + " Guess a number between 1, and 100. You get 6 tries.")
guess = input()

number = (random.randint(1,100))

while guessesTaken < 6:
     guess = input()
     guess = int(guess)

     guessesTaken = guessesTaken + 1

     if guess < number:
         print('Your guess is too low.')


     if guess > number:
         print('Your guess is too high.')


     if guess == number:
         break

if guess == number:
  print("Good job "+ myName + "you guessed my number!")


if guess != number:
     number = str(number)
     print('Nope. The number I was thinking of was ' + number)
