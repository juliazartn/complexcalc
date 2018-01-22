//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

// All your work will go in here
class Calculator {
    
    public func add(lhs : Int, rhs: Int) -> Int {
        return lhs + rhs
    }
    
    public func subtract(lhs : Int, rhs: Int) -> Int {
        return lhs - rhs
    }
    
    public func multiply(lhs : Int, rhs: Int) -> Int {
        return lhs * rhs
    }
    
    public func divide(lhs : Int, rhs: Int) -> Int {
        return lhs / rhs
    }
    
    public func add(_ args: [Int]) -> Int {
        var sum = 0;
        for n in args {
            sum += n
        }
        return sum
    }
    
    public func multiply(_ args: [Int]) -> Int {
        var total = args[0]
        var index = 1
        while index < args.count {
            total *= args[index]
            index += 1
        }
        return total
    }
    
    public func count(_ args: [Int]) -> Int {
        return args.count
    }
    
    public func avg(_ args: [Int]) -> Int {
        var index = 1
        var total = args[0]
        while index < args.count {
            total = total + args[index]
            index += 1
        }
        return total / (args.count)
    }
    
    //input: 2 coordinates
    //output: sum of coordinate in coordinate form
    @discardableResult
    public func add(lhs : (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        let x = lhs.0 + rhs.0
        let y = lhs.1 + rhs.1
        return (x, y)
    }
    
    //input: 2 coordinates
    //output: subtraction of coordinate in coordinate form
    @discardableResult
    public func subtract(lhs : (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (lhs.0 - rhs.0, lhs.1 - rhs.1)
    }
}
