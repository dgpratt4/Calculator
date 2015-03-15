//
//  CalculatorBrain.m
//  Calculator
//
//  Created by Daniel Pratt on 3/13/15.
//  Copyright (c) 2015 dgpratt4 Productions. All rights reserved.
//

#import "CalculatorBrain.h"

@implementation CalculatorBrain

-(double)performOperation:(Operation) newOperation{
	
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

-(Operation)operationFromString:(NSString *) operation{
	if([operation isEqualToString:@"+"]){
		return OperationAdd;
	}else if([operation isEqualToString:@"−"]){
		return OperationSubtract;
	}else if([operation isEqualToString:@"×"]){
		return OperationMultiply;
	}else if([operation isEqualToString:@"÷"]){
		return OperationDivide;
	}else{
		return OperationNone;
	}
}

@end
