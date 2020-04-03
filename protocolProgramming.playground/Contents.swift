import UIKit

protocol Talkable {
    var topic: String { get set }
    func talk(to: Self)
}

//struct Person: Talkable {
//    var topic: String
//    var name: String
//
//    func talk(to: Person) {
//        print("\(topic)에 대해 \(to.name)에게 이야기합니다.")
//    }
//}
//
//struct Monkey: Talkable {
//    var topic: String
//
//    func talk(to: Monkey) {
//        print("우끼끼끼끼끼끼끾 \(topic)")
//    }
//}

extension Talkable {
    func talk(to: Self) {
        print("\(to)! \(topic)")
    }
}

struct Person: Talkable {
    var topic: String
    var name: String
}

struct Monkey: Talkable {
    var topic: String
}

let zehye: Person=Person(topic: "chocolate", name: "zehye")
zehye.talk(to: zehye)

let monkey: Monkey = Monkey(topic: "coding")
let mokey = Monkey(topic: "tree")
monkey.talk(to: mokey)
//
//let zehye: Person=Person(topic: "chocolate", name: "jihye")
//let hana: Person=Person(topic: "Internet", name: "zehye")
//zehye.talk(to: zehye)
//hana.talk(to: zehye)
//
//let monkey: Monkey=Monkey(topic: "banana")
//monkey.talk(to: zehye)
