//
//  main.swift
//  Test
//
//  Created by Jinyoung Kim on 4/29/24.
//

import Foundation

final class EmptyClass {}
struct EmptyStruct {}

struct StructOfStructs {
    var emptyStruct = EmptyStruct()
    var emptyStruct2 = EmptyStruct()
    var emptyStruct3 = EmptyStruct()
    var emptyStruct4 = EmptyStruct()
    var emptyStruct5 = EmptyStruct()
    var emptyStruct6 = EmptyStruct()
    var emptyStruct7 = EmptyStruct()
    var emptyStruct8 = EmptyStruct()
    var emptyStruct9 = EmptyStruct()
    var emptyStruct10 = EmptyStruct()
}

struct StructOfClasses {
    var emptyClass = EmptyClass()
    var emptyClass2 = EmptyClass()
    var emptyClass3 = EmptyClass()
    var emptyClass4 = EmptyClass()
    var emptyClass5 = EmptyClass()
    var emptyClass6 = EmptyClass()
    var emptyClass7 = EmptyClass()
    var emptyClass8 = EmptyClass()
    var emptyClass9 = EmptyClass()
    var emptyClass10 = EmptyClass()
}

class ClassOfStructs {
    var emptyStruct = EmptyStruct()
    var emptyStruct2 = EmptyStruct()
    var emptyStruct3 = EmptyStruct()
    var emptyStruct4 = EmptyStruct()
    var emptyStruct5 = EmptyStruct()
    var emptyStruct6 = EmptyStruct()
    var emptyStruct7 = EmptyStruct()
    var emptyStruct8 = EmptyStruct()
    var emptyStruct9 = EmptyStruct()
    var emptyStruct10 = EmptyStruct()
}

class ClassOfClasses {
    var emptyClass = EmptyClass()
    var emptyClass2 = EmptyClass()
    var emptyClass3 = EmptyClass()
    var emptyClass4 = EmptyClass()
    var emptyClass5 = EmptyClass()
    var emptyClass6 = EmptyClass()
    var emptyClass7 = EmptyClass()
    var emptyClass8 = EmptyClass()
    var emptyClass9 = EmptyClass()
    var emptyClass10 = EmptyClass()
}


func arrayAppendTask1() {
    var array = [StructOfStructs]()
    let object = StructOfStructs()
    for _ in 0..<25000000 {
        array.append(object)
    }
}

func arrayAppendTask2() {
    var array = [StructOfClasses]()
    let object = StructOfClasses()
    for _ in 0..<25000000 {
        array.append(object)
    }
}

func arrayAppendTask3() {
    var array = [ClassOfStructs]()
    let object = ClassOfStructs()
    for _ in 0..<25000000 {
        array.append(object)
    }
}

func arrayAppendTask4() {
    var array = [ClassOfClasses]()
    let object = ClassOfClasses()
    for _ in 0..<25000000 {
        array.append(object)
    }
}

let clock = ContinuousClock()

let time1 = clock.measure {
    arrayAppendTask1()
}
print("1, StructOfStructs: ", time1)

let time2 = clock.measure {
    arrayAppendTask2()
}
print("2: StructOfClasses", time2)

let time3 = clock.measure {
    arrayAppendTask3()
}
print("3: ClassOfStructs", time3)

let time4 = clock.measure {
    arrayAppendTask4()
}
print("4: ClassOfClasses", time4)
