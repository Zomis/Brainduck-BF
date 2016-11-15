

$ minValue 0
$ maxValue 255
$ inputLine 'gsdfsf'

$ name 'gameLoop'
>
$ name 'randomStart'
>>>>>>
+[-
Print 'Please enter something random:'

,----------[++++++++++>,----------]
<<[>[-<+>]<<]
TODO: a plus b can be equal to 256=0 so stop when you encounter two empty spaces in a row
]
TODO: Fix value so that it is between 1 and 100
>
$ name 'value'
<<<<<<

$ assert hasName('randomStart')
>>>>>>+++++>++
>
$ name 'randomEnd'
<
<<<<<< <


RANDOM:
[-]>[-]>[-]>[-]>[-]>[-]>
[<<<<<<+>>>>>>-]>
[<<<<<<+>>>>>>-]<<<<+++++++
[<+++++++++++>-]<
[<<
  [>>>>>>+<<<+<<<-]>>>
  [<<<+>>>-]<<
  [>>>>>+<<<+>+<<<-]>>>
  [<<<+>>>-]<
  [>>>>+
    [<<<+>+>>-]<<
    [>>+<<-]+<
    [>-<[-]]>
    [>+<-]<<-
  ]<-
]++++++
[>++++++++<-]>-
[<<
  [>>>>>+<<<<+<-]>
  [<+>-]>-
]<<<
[-]>
[-]+++++
[<+++++>-]<
[>>>>>>>+
  [<<<<<<+>+>>>>>-]<<<<<
  [>>>>>+<<<<<-]+<
  [>-<[-]]>
  [>>>>+<<<<-]<<-
]++++++
[>>>>>>+++++++++<<<<<<-]>>>>>>
[>>+<<<<<<<<+>>>>>>-]<<<<<<
[>>>>>>+<<<<<<-]

$ assert hasName('randomStart')
$ pause()






<
$ assert hasName('gameLoop')
+[
$ assert hasName('gameLoop')

show 'Guess a number from 1 to 255'

>>>>> >>>>> >>
$ name 'innerGameLoop'
+[
$ assert hasName('innerGameLoop')
show 'Enter your guess: '
$ inputLine '024'
----------[++++++++++>,----------]
TODO: Verify that input is a number
<----- ----- ----- ----- ----- ----- ----- ----- ----- ---
<----- ----- ----- ----- ----- ----- ----- ----- ----- ---
$ assert value == 2
>
$ assert value == 4
$ name 'guess'
>



]


int guess;
boolean play = true;
int totalGames = 0;
int totalGuesses = 0;

while (play) {

    int numberToGuess = rand.nextInt(max) + 1;
    int numberOfTries = 0;
    boolean win = false;
    while (!win) {
        System.out.print("Enter your guess: " + numberToGuess);
        guess = input.nextInt();
        numberOfTries++;

        if (guess == numberToGuess) {
            win = true;
        } else if (guess > numberToGuess) {
            System.out.println("It's lower.");
        } else if (guess < numberToGuess) {
            System.out.println("It's higher.");
        }
        input.nextLine();
    }

    System.out.println("Number of guesses used: " + numberOfTries);

    totalGames++;
    totalGuesses+= numberOfTries;
    System.out.print("Do you want to play again? ");

    //so user can choose to play another game

    String answer = input.nextLine();
    char firstLetter = answer.charAt(0);
    play = (firstLetter == 'y' || firstLetter == 'Y')
    System.out.println();
}







]