//
//  main.swift
//  Lesson_1_HT_1_3
//
//  Created by Лолита Чернышева on 14/07/2019.
//  Copyright © 2019 Лолита Чернышева. All rights reserved.
//
// Пользователь вводит сумму вклада в банк и годовой депозит. Найти сумму вклада через 5 лет
import Foundation

print("Введите сумму вклада")
if let userEnter = readLine() {
    if var depositSum = Double(userEnter) {
        print("Введите годовой процент по вкладу")
        if let userEnter2 = readLine() {
            if var procent = Double(userEnter2) {
                procent = procent / 100
                var count: Int = 0
                let year: Int = 5
                while count < year {
                    depositSum = depositSum + depositSum * procent
                    count = count + 1
                }
                print(depositSum)
            }
        }
    }
}








