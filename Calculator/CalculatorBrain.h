//
//  CalculatorBrain.h
//  Calculator
//
//  Created by Daniel Pratt on 3/13/15.
//  Copyright (c) 2015 dgpratt4 Productions. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 I like that you isolated the calculator logic into this class
 
 a few impreomvents
 
 1. operand should probably be a property
@property double operand;
 that way lines A and B would be uneeded, as well as the setOperand: method in the .m file
 
 2. I'd make operation an enum:
 */

NS_ENUM(NSInteger, Operation) {
    OperationNone, // for when waitingOperation isn't specified
    OperationAdd,
    OperationSubtract,
    OperationMultiply,
    OperationDivide
};

/*
 
 that way you get compile-time checks to ensure you don't send a string that isn't recognized, like [brain performOperation@"^"]
 
 */

@interface CalculatorBrain : NSObject{
	double operand; // A
	NSString *waitingOperation;
	double waitingOperand;
}

-(double)performOperation:(NSString*) operation;
 -(void)setOperand:(double) op; // B



@end
