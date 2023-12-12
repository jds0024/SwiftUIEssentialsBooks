import UIKit
//프로토콜
//타입이 구현해야 하는 요구사항을 정의하는 규칙들의 집합
//구조체, 클래스 ,열거형이 반드시 포함해야 하는 메서드와 프로퍼티를 정의

//프로퍼티 요구사항
protocol MyProtocol {
    
    var mustBeValue: Int {get set}
    var doesNotNeedToValue: Int {get}
}
//프로토콜은 확장하고 싶다면 새로 만들어서 하나더 채택시킨다
protocol MyprotocolFullName{
    var fullName: String {get set}
}

struct MyStruct: MyProtocol, MyprotocolFullName{
    var fullName: String = ""
    var mustBeValue: Int{
        get{return 0}
        set{}
    }
    var doesNotNeedToValue: Int{
        get { return 0}
    }
}
//메서드 요구사항
protocol MyProtocolMethod{
    func random() -> Double
}

//타입메서드를 갖고 있는 프로토콜
protocol MyProtocolMethod2{
    static func randomG() -> Double
}



struct MyMethod: MyProtocolMethod ,MyProtocolMethod2{
    
    //MyProtocolMethod에서 강제화된 메서드
    func random() -> Double {
        return 0.0
    }
    
    //구조체에서 타입매서드 생성
    static func goodMethod() -> String {
        return "good"
    }
    
    //MyProtocolMethod2d에서 강제된 타입 메서드
    static func randomG() -> Double {
        return 1.1
    }
}

//타입 매서드 사용 (인스턴스화 시키지 않고도 사용가능)
MyMethod.goodMethod()

let myMethod = MyMethod()
myMethod.random() //인스턴스 메서드


//변경 메서드 요구사항(mutating method requirements)
protocol MyMutatingProtocol {
    var name: String {get}
    mutating func updateName(name: String)
}

//열거형
protocol Togglable {
    mutating func toggle()
}

//구조체와 매우 유사 프로퍼티만 열거형일뿐
enum OnOffSwitch : Togglable{
    case on,off
    
    
    mutating func toggle(){
        switch self {
        case .off:
            self = .on
        case .on:
            self = .off
        }
    }

}

//초기화 구문 요구사항(Initializer Requirements)
protocol MyinitProtocol{
    init(str1: String,int1: Int)
}
class MyInitClass : MyinitProtocol {
    var str = ""
    var num = 0
    
// required 필수 초기화
    //모든 하위 클래스가 해당 초기화 구문을 구현해야 함을 강제
 required init(str1: String,int1: Int){
        self.str = str1
        self.num = int1
    }
}
class MycontClass : MyInitClass {
    required init(str1: String,int1: Int){
        super.init(str1: str1, int1: int1)
    }
    
}

//익스텐션
extension Double {
    
    var cubed: Double {
        get{return self*self*self}
    }
}
//프로토콜 + 익스텐션
protocol NoExtension {
    var test: Int { get }
    func testFunction(str: String) -> String
}

extension NoExtension {
    var test: Int{
        get {
            return 7
        }
    }
    
    func testFunction(str: String) -> String{
        return "test\(str)"
    }
}
class MyExtensionClass : NoExtension {
    //NoExtension을 구현을 해야하지만 extension에서 구현을 해놨기 때문에 구현안해도 오류 x
    
    //오버라이딩 할수도 있음
    var test: Int{
        get {
            return 0
        }
    }
    
}
let myExtension = MyExtensionClass()
myExtension.test


print("finish")
