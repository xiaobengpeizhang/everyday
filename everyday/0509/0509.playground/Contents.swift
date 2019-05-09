
import UIKit
////private use
//
//public class Car {
//    private let price = 100
//
//    func test() {
//        if price == 100 {
//        }
//    }
//}
//
//extension Car {
//    var age : Int {
//        return price - 10
//    }
//}
//
///*
// **********************************************************************************************************************************************************
// */
////associatedtype
//"""
//protocol Food {}
//protocol Animal {
//    func eat(_ food: Food)
//}
//struct Meat: Food {}
//struct Vegetable: Food {}
//struct Lion: Animal {
//    func eat(_ food: Food) {
//        if let meat = food as? Meat {
//            print("eat \(meat)")
//        } else {
//            fatalError("Lion just eat meat")
//        }
//    }
//}
//let meat = Meat()
//let vegetable = Vegetable()
//Lion().eat(meat)
//Lion().eat(vegetable)
//"""
//protocol Food {}
//protocol Animal {
//    associatedtype F: Food
//    func eat(_ food: F)
//}
//struct Meat: Food {}
//struct Vegetable: Food {}
//struct Lion: Animal {
//    typealias F = Meat
//    func eat(_ food: F) {
//        print("eat \(food)")
//    }
//}
//
//let meat = Meat()
//Lion().eat(meat)
//
//func isItIsAanimal<T: Animal>(_ animal: T) {
//    if animal is Lion {
//        print("is lion")
//    } else {
//        print("is no lion")
//    }
//}
//isItIsAanimal(Lion())
///*
// **********************************************************************************************************************************************************
// */
////造个类型不是梦-白话Swift类型创建
//enum OCBool: ExpressibleByBooleanLiteral {
//    case ocTrue
//    case ocFalse
////    typealias BooleanLiteralType = Bool
//    init(booleanLiteral value: Bool) {
//        self = value ? OCBool.ocTrue : OCBool.ocFalse
//    }
//}
//
//let ocBool: OCBool = true
//
//print(ocBool)
//
////typealias TTTT = Int
////
////let t: TTTT = 100
////t / 50
////
////extension OCBool {
////    init() {
////        self = .ocFalse
////    }
////}
////
////extension OCBool: ExpressibleByBooleanLiteral {
////    init(booleanLiteral value: Self.BooleanLiteralType) {
////        self = .ocFalse
////    }
////}
//
///*
// **********************************************************************************************************************************************************
// */
//var test:String? = nil
//if test == "a" {
//    print("equal")
//} else {
//    print("no equal")
//}
//
//
///*
// **********************************************************************************************************************************************************
// */
class Dog {}
class BengBeng: Dog {
    @objc var age = 10
}
//
//let dog = Dog()
//let beng = BengBeng()
//if dog is Dog {
//    print("dog is Dog")
//} else {
//    print("dog is not Dog")
//}
//if beng is Dog {
//    print("beng is Dog")
//} else {
//    print("beng is not Dog")
//}
//if dog is BengBeng {
//    print("dog is BengBeng")
//} else {
//    print("dog is not BengBeng")
//}
////var nssstring = NSString.init(string: "a")
////if nssstring.isKind(of: AnyClass)
///*
// **********************************************************************************************************************************************************
// */
//if Meat() is Food {
//    print("meat is food")
//}
//
///*
// **********************************************************************************************************************************************************
// */
//let s = "This is a bridgd string" as NSString
//print(s is NSString)
//print(s is String)
//print("adad" is NSString)
//let v: AnyObject = NSNumber.init(value: 3.0)
//print(v)
//
////if let message = "nsstring" as? NSString {
////    print("Successful cast to String: \(message)")
////}
//let mixedArray: [AnyObject] = [s,v]
//for object in mixedArray {
//    switch object {
//    case let x as String:
//        print("'\(x)' is a String")
//    default:
//        print("'\(object)' is not a String")
//    }
//}

let dog2: AnyObject = BengBeng()
//print((dog2 as! BengBeng).age)
print(dog2.age)

/*
 **********************************************************************************************************************************************************
 */
class IntegerRef {
    @objc class func getDefaultValue() -> Int {
        return 42
    }
}

func getDefaultValue(_ c: AnyClass) -> Int? {
    return c.getDefaultValue?()
}

print(getDefaultValue(IntegerRef.self))
print(getDefaultValue(NSString.self))

//let dd =
print(dog2.self.age)
print(dog2.age)
