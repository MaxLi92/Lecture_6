import UIKit
import Foundation

/*
authors: M.Li
number: +77013610104
*/


struct Queue<T: Comparable>{
    var Elements: [T] = []
    
    mutating func add(_ element: T) {
        Elements.append(element)
    }
    
    mutating func next() -> T? {
        print("Cледующий элемент")
        return Elements.removeFirst()
    }
    
    func filter(element: T) {
        print("Нашли: \(Elements.filter{$0 == element})")
    }
    
    mutating func newSort() -> [T]{
        return Elements.sorted(by: {$0 > $1})
    }
    
    subscript (index: Int) -> T?{
        return (index < Elements.count ? Elements[index] : nil)
    }
}

var newQueue = Queue<Int>(Elements: [1])
newQueue.add(10)
newQueue.add(3)
newQueue.add(4)
newQueue.add(6)
print(newQueue)
print(newQueue.newSort())
newQueue.next()
print(newQueue)

var stringQueue = Queue<String>(Elements: ["toyta"])
stringQueue.add("bmw")
stringQueue.add("audi")
print(stringQueue)
stringQueue.filter(element: "bmw")
