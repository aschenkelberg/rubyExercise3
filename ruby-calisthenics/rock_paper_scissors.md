[Back to main README](README.md)

# Rock-Paper-Scissors

Specs: `spec/rock_paper_scissors_spec.rb`

Skeleton: `lib/rock_paper_scissors.rb`

In a game of rock-paper-scissors, each player chooses to play Rock (R),
Paper (P), or Scissors (S). The rules are: Rock breaks Scissors, Scissors
cuts Paper, but Paper covers Rock. 

In a round of rock-paper-scissors, each player's name and strategy is
encoded as an array of two elements

```ruby
    [ "Armando", "P" ]  # => Armando plays Paper
    [ "Dave", "S" ]     # => Dave plays Scissors
```

(In this example, Dave would win because Scissors cuts Paper.)

## A. Game Winner

Create a `RockPaperScissors` class with a *class* method `winner` that
takes two 2-element arrays like those above, and returns the one
representing the winner:

```ruby
    RockPaperScissors.winner(['Armando','P'], ['Dave','S'])
       # => ['Dave','S']
```

If either player's strategy is something other than "R", "P" or "S"
(case-SENSITIVE), the method should raise a
`RockPaperScissors::NoSuchStrategyError` exception and provide the message: 
 "Strategy must be one of R,P,S".

If both players use the same strategy, the first player is the winner.

## B. Tournament

A rock-paper-scissors tournament is encoded as an array of games -
that is, each element can be considered its own tournament.

```ruby
    [
      [
        [ ["Armando", "P"], ["Dave", "S"] ],      
        [ ["Richard", "R"], ["Michael", "S"] ]
      ],
      [
        [ ["Allen", "S"], ["Omer", "P"] ],
        [ ["David E.", "R"], ["Richard X.", "P"] ]
      ]
    ]
```

Under this scenario, Dave would beat Armando (S>P) and Richard would
beat Michael (R>S), so Dave and Richard would play (Richard wins since
R>S); similarly, Allen would beat Omer, David E. would beat Richard X.,
and Allen and Richard X. would play (Allen wins since S>P); and finally
Richard would beat Allen since R>P.  That is, pairwise play continues
until there is only a single winner. 

Write a method `RockPaperScissors.tournament_winner'
that takes a tournament encoded as an 
array and returns the winner (for the above example, it should return
['Richard', 'R']). You can assume that the array is well formed (that
is, there are 2^n players, and each one participates in exactly one
match per round). 

HINT: Formulate the problem as a recursive one whose base case you
solved in part 1.

