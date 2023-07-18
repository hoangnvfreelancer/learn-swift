import Foundation

// MARK: Enum

enum CompassPoint: CaseIterable {
    case north
    case south
    case east
    case west
}

var huongNha: CompassPoint = .south

switch huongNha {
case .north, .east:
    print("hello")
case .south:
    print("hi")
case .west:
    print("b lo")
}

for huong in CompassPoint.allCases {
    print(huong)
}
