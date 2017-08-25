//
//  main.swift
//  DaysInAMonth_Swift
//
//  This program will give you the number of days of any given month of any given year
//
//  Swift v3
//
//  Created by León Felipe Guevara Chávez on 5/31/17.
//  Copyright © 2017 León Felipe Guevara Chávez. All rights reserved.
//  email: leon.guevara@itesm.mx
//

//  import Foundation

var daysOfMonth : CUnsignedShort

//  We ask for and read the month's number
print("Give me the number of the month (1 - 12): ")
let month : CUnsignedShort = CUnsignedShort(readLine()!)!

//  We ask for and read the year's number
print("Give me the number of the year (XXXX): ")
let year : Int = Int(readLine()!)!

//  We find out the number of days that last this particular month
switch month {
case 1, 3, 5, 7, 8, 10, 12:
    daysOfMonth = 31
case 4, 6, 9, 11:
    daysOfMonth = 30
default:
    if (year % 4 == 0) && (year % 100 != 0 || year % 400 == 0) {
        daysOfMonth = 29
    } else {
        daysOfMonth = 28
    }
}

//  We display our findings
print("The numbers of days in this month is \(daysOfMonth)")
