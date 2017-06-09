[Back to main README](README.md)

# Basic Object-Oriented Programming for Dessert

Specs: `spec/dessert_spec.rb`

Skeleton: `lib/dessert.rb`

1. Create a class Dessert with getters and setters for name and
calories.  The constructor should accept arguments for name and
calories.  

2. Define instance methods `healthy?`, which returns true iff a
dessert has less than 200 calories, and `delicious?`, which returns true
for all desserts. 

3. Create a class JellyBean that inherits from Dessert.  The constructor
should accept a single argument giving the jelly bean's flavor; a
newly-created jelly  bean should have 5 calories and its name should be
the flavor plus "jelly bean", for example, "strawberry jelly bean".

4. Add a getter and setter for the flavor. 

5. Modify `delicious?` to return false if the flavor is
`licorice`, but true for all other flavors.  The behavior of
`delicious?` for non-jelly-bean desserts should be unchanged.

