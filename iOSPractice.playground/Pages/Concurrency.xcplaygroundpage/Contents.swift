//: [Previous](@previous)

import Foundation

var greeting = "Concurrency"

/// Serial - Complete the task and move to next task
/// Concurrent - Start the task, move to next task, before completing the current task
/// Sync - block the current current queue, complete the task and move to next


let serialQueue = DispatchQueue(label: "com.example.serialqueue")
serialQueue.async {
    print("Serial Async Start - 1")
    print("Serial Async End - 1")
}

serialQueue.async {
    print("Serial Async Start - 2")
    print("Serial Async End - 2")
}

serialQueue.sync {
    print("Serial sync Start - 1")
    print("Serial sync End - 1")
}

serialQueue.sync {
    print("Serial sync Start - 2")
    print("Serial sync End - 2")
}

let concurrentQueue = DispatchQueue(label: "com.example.concurrentqueue",
                                    attributes: .concurrent)
concurrentQueue.async {
    print("Concurrent Async Start - 1")
    print("Concurrent Async End - 1")
}

concurrentQueue.async {
    print("Concurrent Async Start - 2")
    print("Concurrent Async End - 2")
}

concurrentQueue.async {
    print("Concurrent Async Start - 3")
    print("Concurrent Async End - 3")
}

concurrentQueue.sync {
    print("Concurrent sync Start - 1")
    print("Concurrent sync End - 1")
}

concurrentQueue.sync {
    print("Concurrent sync Start - 2")
    print("Concurrent sync End - 2")
}

concurrentQueue.sync {
    print("Concurrent sync Start - 3")
    print("Concurrent sync End - 3")
}

//: [Next](@next)
