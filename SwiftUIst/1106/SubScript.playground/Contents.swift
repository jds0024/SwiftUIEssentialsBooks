import Foundation

//서브스크립트(Subscripts)
//컬렉션 요소에 접근
//서브스크립트는 클래스,구조체 ,열거형은 컬렉션/리스트/시퀀스의 멤버 요소에 접근할 수 있는 단축표현


    
    
    //문자열접근
    let hello = "Hello"
    hello.startIndex
    "Good".startIndex

    hello[hello.startIndex]

    
extension String {
    subscript(index: Int) -> Character {
        return self[self.index(self.startIndex, offsetBy: index)]
    }
}

hello[0]


