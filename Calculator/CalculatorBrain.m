//
//  CalculatorBrain.m
//  Calculator
//
//  Created by Daniel Pratt on 3/13/15.
//  Copyright (c) 2015 dgpratt4 Productions. All rights reserved.
//

#import "CalculatorBrain.h"

@implementation CalculatorBrain

-(double)performOperation:(NSString *) newOperation{
	
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
	
	if([newOperation isEqualToString:@"+"]){
		waitingOperation = OperationAdd;
	}else if([newOperation isEqualToString:@"−"]){
		waitingOperation = OperationSubtract;
	}else if([newOperation isEqualToString:@"×"]){
		waitingOperation = OperationMultiply;
	}else if([newOperation isEqualToString:@"÷"]){
		waitingOperation = OperationDivide;
	}else{
		waitingOperation = OperationNone;
	}
	
	waitingOperand = _operand;
	return _operand;
}

@end
