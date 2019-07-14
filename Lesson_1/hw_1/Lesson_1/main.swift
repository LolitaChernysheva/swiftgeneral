//
//  main.swift
//  Lesson_1
//
//  Created by Лолита Чернышева on 14/07/2019.
//  Copyright © 2019 Лолита Чернышева. All rights reserved.
//

import Foundation

print("Hello, World!")

var x1: Double = 0
var x2: Double = 0
var D: Double = 0

let a: Double = 6
let b: Double = 1
let c: Double = -1

D = b * b - 4 * a * c
if D > 0 {
    x1 = (-b + sqrt(D)) / 2 * a
    x2 = (-b - sqrt(D)) / 2 * a
    print("x1 = \(x1) ; x2 = \(x2)")
} else if D == 0 {
    x1 = (-b + sqrt(D)) / 2 * a
    print("Уравнение имеет только один корень:  \(x1)")
} else if D < 0 {
    print ("Уравнение не имеет решений")
}


