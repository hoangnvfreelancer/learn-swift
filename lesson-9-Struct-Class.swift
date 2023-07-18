import Foundation

// MARK: Structures and Classes

//var car_color = "blue"
//var car_speed = 500
//var car_auto = true
//
//func carStart(id: Int) {
//    print("khoi dong xe vs id la \(id)")
//}
//
//func carStop() {
//    print("Dung xe")
//}

//carStart(id: 5)

class Car {
    
    // Properties: constants + variables
    
    let id: Int
    
    var chu: String
    
    var color = "blue"
    var speed = 500
    var auto = true
    
    init(chu: String, id: Int) {
        self.chu = chu
        self.id = id
    }
    
    init(chu2: String = "Quoc", id2: Int = 999) {
        self.chu = chu2
        self.id = id2
    }
    
    deinit {
        print("deinit")
    }
    
    // Method: all funcs
    
    func start() {
        print("khoi dong xe vs id la \(id)")
    }

    func stop() {
        print("Dung xe")
    }
    
    func thayChu(chumoi: String) {
        let chucu = self.chu
        self.chu = chumoi
        print("da thay chu tu \(chucu) cho \(chumoi)")
    }
}

// Inheritance: Ke thua
class NissanCar: Car {
    let hang: String = "Nissan"
    let model: String = "sport"
}

//let oto1 = Car(chu: "An", id: 8)
//let oto2 = Car(chu: "Quoc", id: 1)
//let oto3 = Car()
//let oto4 = NissanCar()

//print("ten chu xe o to 4 la \(oto4.color)")
//
//print("ten chu xe o to 2 la \(oto2.chu)")
//
//oto2.chu = "Phong"
//
//print("ten chu xe o to 2 la \(oto2.chu)")

//oto2.thayChu(chumoi: "Phong")

//func abc() {
//    let oto4 = NissanCar()
//    // deinit
//}
//
//abc()

// Struct: value type
// Class: reference type

struct A {
    var x: Int
    
    init(x: Int) {
        self.x = x
    }
}

class B {
    var x: Int
    
    init(x: Int) {
        self.x = x
    }
}

var structA = A(x: 8)
var structB = structA

structB.x = 79

print(structA.x)
print(structB.x)

let classA = B(x: 8)
let classB = classA

classB.x = 79

print(classA.x)
print(classB.x)
