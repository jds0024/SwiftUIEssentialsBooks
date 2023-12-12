import UIKit

//ex1
//다음 프로토콜을 채택하는 Person 구조체를 정의하고, 프로토콜의 메서드를 구현하세요.

protocol Greeting {
    var name: String { get }
    func sayHello()
}
struct Person2: Greeting{
    var name: String //구조체는 init없어도됨
    
    func sayHello() {
        print("Hello, \(name)")
    }
    
}

let person2 = Person2(name: "park")
person2.sayHello()     // Hello, park!


//ex2
//다음 프로토콜을 채택하는 Circle 클래스를 정의하고, 프로토콜의 연산 프로퍼티를 구현하세요.
protocol Shape {
    var area: Double { get }
}
class Circle : Shape{
    var r: Double
    
    init(r: Double) {
        self.r = r
    }
    var area: Double {
        get {
            return .pi*r*r
        }
        
    }
}
let circle = Circle(r: 2.0)
print(circle.area)

//ex3
//다음 프로토콜을 채택하는 Car 구조체를 정의하고, 프로토콜의 타입 메서드를 구현하세요.
protocol Vehicle {
    static func makeNoise()
}
struct Car : Vehicle{
    static func makeNoise() {
        print("붕붕")
    }
}
Car.makeNoise()

//ex4
//다음 프로토콜을 채택하는 Counter 클래스를 정의하고, 프로토콜의 타입 연산 프로퍼티를 구현하세요.
protocol Countable {
    static var count: Int { get set }
}
class Counter : Countable {
    static var count: Int = 0
//ex5
    
    
    
}
struct Student2: Equatable {
    var name: String
    var age: Int
    //==연산자를 재정의
    static func == (lhs: Self, rhs: Self) -> Bool{
        return lhs.name == rhs.name && lhs.age == rhs.age
    }
}

let alice = Student2(name: "Alice", age: 20)
let bob = Student2(name: "Bob", age: 21)

print(alice == bob) // false

//예제 6
//다음 코드에서 Person 클래스를 프로토콜로 변환하고, Student 클래스가 이 프로토콜을 준수하도록 수정해보세요.
protocol Person {
    var name: String {get}
    var age: Int {get}
    var school: String{get}

    
        

    func introduce()
}

class Student: Person {
    var name: String
    var age: Int
    var school: String
    
   init(name: String, age: Int, school: String) {
        self.name = name
        self.age = age
        self.school = school
    }
     func introduce() {
        print("My name is \(name) and I'm \(age) years old.")
        print("I go to \(school).")
    }
    

   
}
let myStudent = Student(name: "Dasna", age: 24, school: "fsd")


//예제 7
//프로토콜을 채택하고 준수하는 클래스를 정의하고, 해당 클래스의 인스턴스를 생성하고 프로토콜의 메서드를 호출하는 코드를 작성해보세요.
//프로토콜의 이름은 Speaker이고, 인사말을 출력하는 메서드 speak(message: String)을 가지고 있습니다.
protocol Speaker{
    func speak(message: String)
}
class SpeakerClass : Speaker{
    func speak(message: String) {
        print(message)
    }
}
var speak = SpeakerClass()
speak.speak(message: "안녕하세요")


//예제8
//프로토콜을 상속받는 서브 프로토콜을 정의하고, 해당 프로토콜을 채택하고 준수하는 구조체를 정의하세요.

protocol Animal {
    var name: String { get }
    func makeSound()
}
protocol Animal2 : Animal{
   
    var owner: String { get }
    
}
struct Dog : Animal2 {
    var name: String
    var owner: String
    func makeSound() {
        print("Woof!")
    }
}

//...
let bob8 = Dog(name: "Bob", owner: "Charlie")
bob8.makeSound()     // Woof!


//ex9
//프로토콜에 연산 프로퍼티와 타입 메서드를 선언하고, 해당 프로토콜을 채택하고 준수하는 클래스를 정의하세요.
protocol Calculable {
    var value: Int { get set }
    static func add(_ a: Int, _ b: Int) -> Int
}

class Calculator : Calculable {
    var value: Int{
        get{0}
        set{0}
    }
        
    static func add(_ a: Int, _ b: Int) -> Int {
        return (a+b)
    }
}
print(Calculator.add(3, 5))

//ex10
//프로토콜을 확장하여 기본 구현을 제공하고, 해당 프로토콜을 채택하고 준수하는 열거형을 정의하세요.
protocol Colorful {
    var color: String { get }
    func describe()
}

extension Colorful {
    func describe() {
        print("This is \(color).")
    }
}
enum Fruit : Colorful{
    case apple
    case banana
    case cherry
    var color: String { get{
        switch self {
        case .apple:
            return "red"
        case .banana:
            return "yellow"
        case .cherry:
            return "pink"
        }
    } }
    
    
}


//...
let fruit = Fruit.apple
fruit.describe()        // This is red.
Fruit.banana.describe() // This is yellow.
Fruit.cherry.describe() // This is pink.
print("last")


//ex11



