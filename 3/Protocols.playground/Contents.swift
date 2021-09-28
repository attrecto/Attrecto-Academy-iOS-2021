


protocol Counter {
    func increment()
    var currentValue: Int { get }
    var description: String { get }
}

class DefaultCounter: Counter {
    var currentValue: Int = 0
    
    var description: String {
        return "One way counter with value: \(currentValue)"
    }
    
    func increment() {
        currentValue += 1
    }
    
    func otherMethod() {
        print("other")
    }
}

class OtherCounter: Counter {
    func increment() {
        print("other counter increment")
        currentValue += 5
    }
    
    var currentValue: Int = 1000
    
    var description: String {
        "One way counter with value: \(currentValue)"
    }
}

protocol TwoWayCounter: Counter {
    func decrement()
}

class DefaultTwoWayCounter: TwoWayCounter {
    let defaultCounter = DefaultCounter()
    
    var currentValue: Int {
        defaultCounter.currentValue
    }
    
    func increment() {
        defaultCounter.increment()
    }
    
    func decrement() {
        defaultCounter.currentValue -= 1
    }
    
    var description: String {
        "Two way counter value: \(currentValue)"
    }
}



let counter: Counter = DefaultTwoWayCounter()

counter.currentValue
counter.increment()
counter.increment()
counter.currentValue

let twoWayCounter: TwoWayCounter = DefaultTwoWayCounter()

twoWayCounter.currentValue
twoWayCounter.decrement()
twoWayCounter.currentValue


protocol TudRepülni {
    func repül()
}

class Madár: TudRepülni {
    func repül() {
        print("a madár csapkod a szárnyával és repül")
    }
}

class Repülő: TudRepülni {
    func repül() {
        print("sugárhajtóművel repül")
    }
}





class Shape {
    
}

extension Shape {
    func newMethod() {
        print("this is an extension method")
    }
}


let shape = Shape()
shape.newMethod()

extension String {
    func printSelf() {
        print(self)
    }
}

"Hello".printSelf()

class Denevér {
    
}

extension Denevér: TudRepülni {
    func repül() {
        "éjszaka repül"
    }
}


extension TudRepülni {
    
    var szárnyakSzáma: Int {
        2
    }
    
    func zuhan() {
        print("zuhanás")
    }
}

let denevér = Denevér()

denevér.zuhan()
