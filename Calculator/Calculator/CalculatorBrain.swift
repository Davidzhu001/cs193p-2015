//
//  CalculatorBrain.swift
//  Calculator
//
//  Created by Wen Shao on 5/02/2015.
//  Copyright (c) 2015 Wen Shao. All rights reserved.
//

import Foundation

class CalculatorBrain{
    private enum Op{
        case UnaryOperation(String, Double -> Double)
        case BinaryOperation(String, (Double, Double)->Double)
        case Operand(Double)
    }
    private var opStack = [Op]() //identical to Array<Op>()
    private var knownOps = [String:Op]() //idential to Dictionary<String, Op>()
    
    init(){
        knownOps["×"] = Op.BinaryOperation("×", *)
        knownOps["+"] = Op.BinaryOperation("+", +)
        knownOps["÷"] = Op.BinaryOperation("÷"){$1 / $0}
        knownOps["−"] = Op.BinaryOperation("−"){$1 - $0}
        knownOps["√"] = Op.UnaryOperation("√", sqrt)
    }
    
    func pushOperand(operand:Double){
        opStack.append(Op.Operand(operand))
    }
    
    func performOperation(symbol:String){
        if let operation = knownOps[symbol]{ //look up in a dictionary, always return an optional
            opStack.append(operation)
        }
    }
    
    func evaluate(op:[Op]) -> 
    
    func evaluate() -> Double?{
        
    }
}
