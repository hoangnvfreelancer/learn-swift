import Foundation

// Kieu du lieu: Type Annotations
var a: Int = 10
let b: String = "Hello"
let c: Double = 5.0
let d: Float = 4 // 4.0

a = 5

// Khai bao hang so
let x: Int = 5
//x = 6 // -> Error

let y: Int
y = 10

//// Khai bao bien
var z = "Hello"
let typez = type(of: z)
print(typez)

//// Khai bao nhieu bien tren cung 1 dong
var x1 = 0.0, y1 = 0.0, z1 = 0.0

// Convert number

print("int 8 min: \(UInt8.min)")
print("int 8 max: \(UInt8.max)")

print("int 16 min: \(UInt16.min)")
print("int 16 max: \(UInt16.max)")

let int8: UInt8 = 10
let int16: UInt16 = UInt16(int8)

let floatNum: Float = 12.4
let intNum: Int = Int(floatNum)
print(intNum)

// Type Aliases
typealias DayLaSoInt = Int

// Boolean
let napTienChua: Bool = false

if napTienChua {
    print("Nap tien r")
} else {
    print("Chua nap tien")
}

// Optionals
let convert1: Int? = Int("123") // se nhan gia tri la Int hoac la nil
let convert2: Int? = Int("hello")

print("convert 1: \(convert1)")
print("convert 2: \(convert2)")

var convert: Int?
convert = Int("123")
convert = Int("hello")

// Muc dich: Kiem tra gia tri dau vao nhap vao dung hay sai
let ageInput = "23"
let ageInt: Int? = Int(ageInput)

// Cach 1
if ageInt != nil {
    print(ageInt)
    print(type(of: ageInt))
} else {
    print("Yeu cau nhap lai tuoi voi so Int")
}

// Cach 2
if let ageIntNotNil = ageInt {
    print(ageIntNotNil)
    print(type(of: ageIntNotNil))
} else {
    print("Yeu cau nhap lai tuoi voi so Int")
}
