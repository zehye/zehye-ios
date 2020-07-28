import UIKit

class A: Equatable {
  var aNum : Int
  init(_ aNum: Int) {
    self.aNum = aNum
  }
  public static func ==(lhs: A, rhs: A) -> Bool {
    return lhs.aNum == rhs.aNum
  }
}

if A(1) == A(2) {
    print("same")
} else {
    print("different")
}
