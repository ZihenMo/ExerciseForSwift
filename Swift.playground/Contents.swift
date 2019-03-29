import UIKit

// mark: - Option  嵌套
/// Option嵌套导致 if let解包得到的依然是Option类型，无法正确判断。
/// 实际使用应避免Option嵌套使用

// 可将Int?赋值为Int??是因为Option类型的构造函数进行了包装。
let ival1: Int? = nil
let ival2: Int?? = ival1
let ival3: Int??? = ival2

if let _ = ival3 {
    print("not none")
}

let ival4: Optional<Int> = ival1
let ival5: Optional<Optional<Int>> = ival4
if let _ = ival5 {
    print("not none")
}
protocol Wrap {}

enum OP<Wrap> {
    case None
    case Some(Wrap)
    
    public init () {self = .None}
    public init (_ some: Wrap) {self = .Some(some)}
}

typealias OpT = OP<Wrap>

struct A<OpT> {
    var a: Int
}


// 将字典的value赋值为nil删除kv
var dic: [String:String?] = ["key":nil]
let v1: String? = nil
let v2: String?? = v1
let v3: String?? = nil
print(type(of: v1))
print(type(of: v2))





