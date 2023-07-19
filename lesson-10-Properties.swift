import Foundation

// OOP: Object-Oriented-Programing: Huong doi tuong

// 4 Dac diem chinh:
// - Dong goi
// - Tinh truu tuong
// - Tinh ke thua
// - Tinh da hinh

class Car {
    // Properties: bao gom cac bien va hang: Dac diem cua xe
    var color: String = "red"
    var speed: Double = 500
    var model: String = "sedan"
    
    // Methods: bao gom cac functions: tinh nang xe
    
    func chay() {
        
    }
    
    func dung() {
        
    }
    
    func tiengCoi() {
        print("beep beep")
    }
}

class VinfastCar: Car {
    var hangXe: String = "Vinfast"
    
    override func tiengCoi() {
        super.tiengCoi()
        print("boom boom")
    }
}

//let car = VinfastCar()
//car.tiengCoi()

// MARK: Properties

struct Point {
    var x = 0.0, y = 0.0
}
struct Size {
    var width = 0.0, height = 0.0
}

struct Shape {
    // 1. Stored Properties
    var origin = Point()
    var size = Size()
    
    // 2. Lazy Stored Properties
    lazy var lazyVar: Int = 5
    
    // 3. Computed Properties
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set(newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}

// Read-Only Computed Properties

struct Cuboid {
    var width = 0.0, height = 0.0, depth = 0.0
    
    var volume: Double {
        return width * height * depth
    }
}

//let a = Cuboid(width: 1, height: 2, depth: 3)
//print(a.volume)

// Property Observers
class StepCounter {
    
    var totalSteps: Int = 0 {
        willSet(newStep) {
//            print("new step will be stored is \(newStep)")
//            print("curent value is \(totalSteps)")
        }
        
        didSet {
//            print("curent value is \(totalSteps)")
//            print("old value is \(oldValue)")
            
            if totalSteps > oldValue  {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}

let stepCounter = StepCounter()
stepCounter.totalSteps = 200
stepCounter.totalSteps = 250
