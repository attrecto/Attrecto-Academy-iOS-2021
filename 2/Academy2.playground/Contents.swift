// Dictionary -------------------------

var dict: [String: Int] = [:]

dict["key"] = 1
dict["temperature"] = 21

print(dict["asd"])
print(dict["key"])

print(dict)

// For-------------

let array = [1,2,3,4,5]

for number in array {
    print(number)
}

for i in (0..<10) {
    print(i)
}

let tuple = (1, "Ottó")

let names = ["János", "Péter", "Mária"]

for (index, name) in names.enumerated() {
    print("index: \(index), name: \(name)")
}

array.forEach { number in
    print(number * 2)
}

// Closures---------------

func helloFunc() -> String {
    "Hello"
}

func multiplyBy3Func(number: Int) -> Int {
    number * 3
}

let hello: () -> String = {
    "Hello"
}

hello()

var numbers = [1, 2, 3, 4, 5]
var multiplyBy3: (Int) -> Int = { number in
    number * 3
}

let numberStrings: [String] = numbers.map({ (number: Int) in
    return "\(number)"
})

let numberStrings2 = numbers.map { "\($0)" }

let multipliedArray = numbers.map(multiplyBy3)

print(multipliedArray)
print(numberStrings)

var multiplyNumbers: (Int, Int) -> Int = { number1, number2 in
    number1 * number2
}

print(multiplyNumbers(3,3))

var optionalClosure: ((String) -> Void)?
optionalClosure?("Hello World!")
optionalClosure = {
    print($0)
}
optionalClosure?("Hello World!")

// Class ------------

class Shape {
    var numberOfSides: Int
    
    init(numberOfSides: Int) {
        self.numberOfSides = numberOfSides
    }
    
    static func name(of shape: Shape) -> String {
        String(describing: shape)
    }
    
    func description() -> String {
        "A shape with \(numberOfSides) sides."
    }
    
    func area() -> Double {
        fatalError("Cannot calculate area of common shape")
    }
}

class Rectangle: Shape {
    let a: Double
    let b: Double
    
    init(a: Double, b: Double) {
        self.a = a
        self.b = b
        super.init(numberOfSides: 4)
    }
    
    override func description() -> String {
        "A shape with \(numberOfSides) sides and 90° angles."
    }
    
    override func area() -> Double {
        a * b
    }
}

final class Square: Rectangle {
    let sideLength: Double
    
    init(sideLength: Double) {
        self.sideLength = sideLength
        super.init(a: sideLength, b: sideLength)
    }
    
    override func description() -> String {
        "A shape with \(numberOfSides) equal sides and 90° angles."
    }
}

final class Circle: Shape {
    let r: Double
    
    init(r: Double) {
        self.r = r
        super.init(numberOfSides: 0)
    }
    
    override func area() -> Double {
        r * r * .pi
    }
}

let shape = Rectangle(a: 2, b: 4)
let square = Square(sideLength: 10.0)
print(shape.area())
print(square.area())

let shapes: [Shape] = [
    Circle(r: 8.0),
    Rectangle(a: 2.0, b: 4.0),
    Square(sideLength: 3.0)
]

shapes.forEach { shape in
    print(Shape.name(of: shape))
    print(shape.description())
    print("Area of shape is: \(shape.area()) cm2")
}

// Struct --------------

struct Resolution {
    private(set) var width: Int
    private(set) var height: Int

    mutating func setHeight(_ height: Int) {
        self.height = height
    }
    
    mutating func setwidth(_ width: Int) {
        self.width = width
    }
}

var hd = Resolution(width: 1920, height: 1080)
//hd.setHeight(10)

// Struct vs Class ---------------

struct SomeStruct {
    var i = 0
}

class SomeClass {
    var i = 0
}

var someClass = SomeClass()
var someClass2 = someClass
someClass2.i = 10
print(someClass.i)

var someStruct = SomeStruct()
var someStruct2 = someStruct
someStruct2.i = 10
print(someStruct.i)

// Enum ------------------

enum Direction {
    case forward
    case backward
    case left
    case right
}

let direction = Direction.left

switch direction {
case .left:
    print("direction is left")
default:
    break
}

enum NumberSign: Int {
    case positive = 1
    case negative = -1
}

func printAbsoluteValue(number: Int, sign: NumberSign) {
    print(number * sign.rawValue)
}

printAbsoluteValue(number: -10, sign: .negative)
