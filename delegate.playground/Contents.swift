import UIKit


protocol SomeDelegate {
    func someFunction(someProperty: Int)
}

class SomeView: UIView {
    var delegate: SomeDelegate?
    
    func someTapped(num: Int){
        delegate?.someFunction(someProperty: num)
    }
}

class SomeController: SomeDelegate {
    var view: SomeView?
    
    init() {
        view = SomeView()
        view?.delegate = self
        someFunction(someProperty: 0)
    }
    
    func someFunction(someProperty: Int) {
        print(someProperty)
    }
}

let someController = SomeController()
