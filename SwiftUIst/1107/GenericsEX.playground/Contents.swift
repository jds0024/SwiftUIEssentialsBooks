import UIKit

//ex1
struct Stack<T> {
    var items = [T]()
    mutating func push(_ item: T) {
        items.append(item)
    }
    mutating func pop() -> T {
        return items.removeLast()
    }
    
    
}

var intStack = Stack<Int>()
intStack.push(3)
intStack.push(5)
print(intStack.pop()) // 5

var stringStack = Stack<String>()
stringStack.push("Hello")
stringStack.push("World")
print(stringStack.pop())


//ex2
var a = 10
var b = 20
func swap<T>(_ a: inout T,_ b: inout T){
    let fs:T
    fs = b
    b = a
    a = fs
    
}



swap(&a, &b)
print(a, b) // 20, 10


//ex3
//var stack = Stack<Int>()
//stack.push(1)
//stack.push(2)
//stack.push(3)
//print(stack.pop())   // 3
//print(stack.peek())  // 2
//print(stack.isEmpty) // false
//
//extension Stack{
//    
//}
//ex4
var queue = Queue<String>()
queue.enqueue("A")
queue.enqueue("B")
queue.enqueue("C")
print(queue.dequeue()) // A
print(queue.front()) // B
print(queue.isEmpty) // false

struct Queue<T>{
    private var items:[T] = []
    mutating func enqueue(_ n : T){
        items.append(n)
    }
    mutating func dequeue()->T{
        items.removeFirst()
    }
    mutating func front()->T{
        items.removeFirst()
    }
    var isEmpty: Bool {
        get{
            return items.isEmpty
        }
    }
}

//ex5
func printType<T>(_ V:T){
    print("The type of \(V) is \(type(of: V))")
}
printType(3) // The type of 3 is Int
printType("Hello") // The type of Hello is String
printType(true) // The type of true is Bool


//ex6
class Node<T,U>{
    var key:T
    var value:U
    init(key: T, value: U) {
        self.key = key
        self.value = value
    }
}



let node = Node(key: "name", value: "Alice")
print(node.key) // name
print(node.value) // Alice


//ex7
func isEqual<T: Equatable>(_ A:T,_ B:T) -> Bool {
    A == B
}
print(isEqual(1, 1)) // true
print(isEqual("Hello", "World")) // false
print(isEqual(true, false)) // false

//ex8
func isInt<T>(_ v:T) -> Bool{
    type(of: v) is Int.Type
   
}

print(isInt(3)) // true
print(isInt("Hello")) // false
print(isInt(true)) // false


//ex9
func castToInt<T>(_ v:T)->T?{
    if(type(of: v) is Int.Type){
        return v
    }else{
        return nil
    }
}

print(castToInt(3)) // 3
print(castToInt("Hello")) // nil
print(castToInt(true)) // nil
