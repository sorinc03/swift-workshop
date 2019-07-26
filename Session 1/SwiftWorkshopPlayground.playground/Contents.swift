import UIKit

var str = "Hello, playground"

// Let + Var

var myVariable = 1
let myConstant = 2

var myString: String = "Hello world"

let numbers = 10
var description = "I have \(numbers) cats"

// Casting
String(numbers)
Int("10")

// Collections
var numbersArray = [1, 1, 2, 3, 5, 8]
numbersArray.append(10)
numbersArray.remove(at: 3)
numbersArray


var movies = [
    "Star Wars": "SF",
    "Jaws":"Action"
]

for (movie, genre) in movies {
    if genre == "Action" {
        print(movie)
    }
}

func moveForward(piece: String, steps: Int) -> String {
    return "The \(piece) piece has moved by \(steps) steps forward"
}

moveForward(piece: "Queen", steps: 3)

class Spaceship {
    var category = "cruiser"
    var name: String?

    init(name: String) {
        self.name = name
    }

    func simpleDescription() -> String {
        return "This is a \(category) spaceship"
    }
}

var spaceship = Spaceship(name: "Enterprise")
spaceship.category = "Battleship"
spaceship.simpleDescription()

if let spaceshipName = spaceship.name {
    print(spaceshipName)
}








