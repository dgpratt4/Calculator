//
//  CalculatorBrain.h
//  Calculator
//
//  Created by Daniel Pratt on 3/13/15.
//  Copyright (c) 2015 dgpratt4 Productions. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorBrain : NSObject{
	double operand;
	NSString *waitingOperation;
	double waitingOperand;
}

-(double)performOperation:(NSString*) operation;
-(void)setOperand:(double) op;

@end
