//
//print("Hello")
//print(3.14)
//print(true)
//
//var a = "Hello"
//
//var b: String
//b = "b"
//
//print(b)
//
//
//var number = 1.2
//
//var floatNumber: Float = 1.2
//var float2 = Float(4.3)
//
//var boolean: Bool = true
//
//boolean = false
//
//var char: Character = "c"
//
//
//
//// Let -----
//
//let constant = "Hello world"
//// constant = "asd"
//
//// Conditions
//
//let text1 = "aasdfg"
//let text2 = "b"
//
//let tex3 = text1 + text2
//
//if text1 == text2  {
//    print("equal")
//} else if text1 == "a" {
//    print("text1 is a")
//} else {
//    print("text1: \(text1)")
//    print(text1, text2)
//}
//
//switch text1 {
//case "a":
//    print("text1 is a")
//case "b":
//    break
//default:
//    print("default")
//}
//
//func method() {
//    let number = 1
//
//    guard number == 1 else {
//        print("number is not 1")
//        return
//    }
//
//
//    print("aaaaa")
//    print("aaaaa")
//
//    print("aaaaa")
//
//    print("aaaaa")
//
//    print("aaaaa")
//    print("aaaaa")
//    print("aaaaa")
//}
//
//method()
//
//
//// Optionals----------------
//
//var optionalText: String? = nil
//var number: Int?
//
//var variable: Double? = nil
//
//print(number)
//
//
//func printNonOptional(text: String) {
//    print(text)
//}
//
//
//optionalText = "asd"
//
//if let optionalText = optionalText {
//    printNonOptional(text: optionalText)
//} else {
//    print("optionaltext is nil")
//}
//
//printNonOptional(text: optionalText ?? "default string")
//
//func printOptional(optionalText: String?) {
//    guard let optionalText = optionalText else { return }
//
//    print(optionalText)
//
//    print(optionalText)
//
//    print(optionalText)
//
//    print(optionalText)
//
//    print(optionalText)
//    print(optionalText)
//}


// Collections

var numbers1 = [1,2,3,4,5,6]
var numbers2 = [7,8,9,10]

let emptyNumbers: [Int] = [1,2,3]
var empty2 = [String]()

let optionalNumbers: [Double]? = nil
var optionalDoubles: [Double?]? = [nil, nil, nil, 3.12]

var numbers3 = numbers1 + numbers2

numbers3.append(11)

numbers3.remove(at: 3)

print(numbers3)
numbers3.count


