import UIKit

//Generics
//어떤 타입에도 유연하게 대응할 수 있는 코드를 구현
//구현한 기능과 타입은 재사용하기 쉽고,코드의 중복을 줄일 수 있음(추상적 표현)

//제너릭 타입: 타입이름 <타입 매게변수>

//제너릭 메서드: 메서드이름<타임 매게변수>{메서드or매게변수..}{ }
// 제너릭 함수
func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var someInt = 3
var anotherInt = 107
swapTwoValues(&someInt, &anotherInt)
print( someInt, anotherInt )


// 제너릭 타입
struct Stack<Element> {
    var items: [Element] = []
    mutating func push(_ item: Element) {
        items.append(item)
    }
    mutating func pop() -> Element {
        return items.removeLast()
    }
}

var myStack: Stack<String> = Stack<String>()
myStack.push("Park")
myStack.push("Kim")
myStack.push("Lee")
myStack.items
myStack.pop()

//제네릭 확장(익스텐션)
extension Stack{
    var topElement: Element?{
        return self.items.last
    }
}

myStack.topElement

//제너릭 타입제약()


