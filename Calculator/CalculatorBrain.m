//
//  CalculatorBrain.m
//  Calculator
//
//  Created by Daniel Pratt on 3/13/15.
//  Copyright (c) 2015 dgpratt4 Productions. All rights reserved.
//

#import "CalculatorBrain.h"

@implementation CalculatorBrain

- (double)performOperation:(Operation)newOperation {
    
    switch (waitingOperation) {
        case OperationAdd:
            _operand = waitingOperand + _operand; break;
        case OperationSubtract:
            _operand = waitingOperand - _operand; break;
        case OperationMultiply:
            _operand = waitingOperand * _operand; break;
        case OperationDivide:
            if(_operand){ //check for dividing by zero
                _operand = waitingOperand/_operand;
            }
            break;
        case OperationNone:
            break;
    }
	
	waitingOperation = newOperation;
	waitingOperand = _operand;
    return waitingOperation ? 0 : _operand;
}

@end
