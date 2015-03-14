//
//  CalculatorBrain.m
//  Calculator
//
//  Created by Daniel Pratt on 3/13/15.
//  Copyright (c) 2015 dgpratt4 Productions. All rights reserved.
//

#import "CalculatorBrain.h"

@implementation CalculatorBrain

// this method is uneeded since it does the exact same thing that the superclass's implementation does.
-(instancetype)init{
	self = [super init];
	return self;
}


-(double)performOperation:(NSString *) operation{
	if([waitingOperation isEqualToString:@"÷"]){
		//check for dividing by zero
		if(operand){
			operand = waitingOperand/operand;
		}
	}else if([waitingOperation isEqualToString:@"×"]){
		operand = waitingOperand * operand;
	}
	else if([waitingOperation isEqualToString:@"+"]){
		operand = waitingOperand + operand;
		
	}
	else if([waitingOperation isEqualToString:@"−"]){
		operand = waitingOperand - operand;
	}
	
	waitingOperation = operation;
	waitingOperand = operand;
	return operand;
}

-(void)setOperand:(double) op{
	operand = op;
}

@end
