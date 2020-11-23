print ("Welcome to my Pig Latin converter")

pyg = "ay"

original = input ("Enter your name to be translated:")

if len(original) > 0 and original.isalpha():
    word = original.lower()
    first = original[0]
else:
    print("empty")

new_word = word + first + pyg
new_word = new_word[1:]
print (new_word)
