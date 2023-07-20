import Foundation

class Counter {
    var count = 0
    
    func increment() {
        count += 1
    }
    
    func a() {
        self.increment()
    }
}

//let obj = Counter()
//print(obj.count)

//print(Counter.count) // Error

class SomeClass {
    
    var x: Int = 8
    
    static var name = "Hoang"
    
    func abc() {
        print(self.x)
    }
    
    static func someTypeMethod() {
        // type method implementation goes here
//        print(self.x) // Error
//        print(self.name)
        print("hello \(name)")
    }
}

// func nhom 1
extension SomeClass {
    func sayHello() {
        print("Hello!")
    }
}

// func nhom 2
extension SomeClass {
    
}

//SomeClass.someTypeMethod()

//let some = SomeClass()
//some.sayHello()

// MARK: Protocols

protocol FirstProtocol {
    var x: Int { get set }
    func sayHello()
}

protocol SecondProtocol {
    func sayAlo()
}

class A: FirstProtocol {
    var x: Int = 0
    
    func sayHello() {
        print("")
    }
}

class AnyClass {
    
}

class NewClass: AnyClass, FirstProtocol, SecondProtocol {
    var x: Int = 10
    
    func sayHello() {
        
    }
    
    func sayAlo() {
        print("alo")
    }
}

let a = NewClass()
a.sayAlo()
print(a.x)

// cach dung 1: bat tuan thu theo form
// cach dung 2: truyen data
