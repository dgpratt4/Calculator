//
//  CalculatorBrain.m
//  Calculator
//
//  Created by Daniel Pratt on 3/13/15.
//  Copyright (c) 2015 dgpratt4 Productions. All rights reserved.
//

#import "CalculatorBrain.h"

@implementation CalculatorBrain

-(double)performOperation:(int) newOperation{
	
	if(waitingOperation == OperationAdd){
		_operand = waitingOperand + _operand;
	}else if(waitingOperation == OperationSubtract){
		_operand = waitingOperand - _operand;
	}else if(waitingOperation == OperationMultiply){
		_operand = waitingOperand * _operand;
	}else if(waitingOperation == OperationDivide){
		if(_operand){ //check for dividing by zero
			_operand = waitingOperand/_operand;
		}
	}
	
	waitingOperation = newOperation;
	waitingOperand = _operand;
	return _operand;
}

@end
