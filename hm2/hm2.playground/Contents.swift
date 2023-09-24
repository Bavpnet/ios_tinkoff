// Задание 1
//Придумать и реализовать класс/структуру с дженириком + экстеншен тоже с дженериком.

class CustomPair<T1,T2>{
     var first : T1
     var second : T2
    
    init (first: T1, second:T2){
        self.first = first
        self.second = second
    }
    
    var firstValue: T1 {
            get {
                return first
            }
            set {
                first = newValue
            }
        }
    
    var secondValue: T2 {
           get {
               return second
           }
           set {
               second = newValue
           }
       }
}

extension CustomPair {
    func swap() -> CustomPair<T2, T1> {
        return CustomPair<T2, T1>(first: self.second, second: self.first)
    }
}

// Пример реализации класса пары, который может быть использована практически в любом месте :)
let pair = CustomPair(first: 42.0, second: 3.14)

print(pair.firstValue, pair.secondValue)
let swappedPair = pair.swap()

print(swappedPair.firstValue, swappedPair.secondValue)


// Задание 2
//Также реализовать протокол с ассоциативными типами + пример использования.

protocol Database {
    associatedtype Index: Hashable
    associatedtype Value
    
    var dictionary: [Index: Value] { get set }
    
    mutating func setValue(_ value: Value, forIndex index: Index)
    func getValue(forIndex index: Index) -> Value?
}

struct DatabaseStruct<Index: Hashable, Value>: Database {
    var dictionary: [Index: Value] = [:]
    
    mutating func setValue(_ value: Value, forIndex index: Index) {
        dictionary[index] = value
    }
    
    func getValue(forIndex index: Index) -> Value? {
        return dictionary[index]
    }
}

// Пример использования для хранения в базе данных
var MyDatabase = DatabaseStruct<Int, String>()
MyDatabase.setValue("Саша", forIndex: 1)
MyDatabase.setValue("Игорь", forIndex: 2)

if let answer = MyDatabase.getValue(forIndex: 1) {
    print("Value1: \(answer)")
} else {
    print("Error")
}

if let score = MyDatabase.getValue(forIndex: 2) {
    print("Value2: \(score)")
} else {
    print("Error")
}


