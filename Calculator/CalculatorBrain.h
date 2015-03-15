//
//  CalculatorBrain.h
//  Calculator
//
//  Created by Daniel Pratt on 3/13/15.
//  Copyright (c) 2015 dgpratt4 Productions. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, Operation) {
    OperationNone, // for when waitingOperation isn't specified
    OperationAdd ,
    OperationSubtract,
    OperationMultiply,
    OperationDivide
};

@interface CalculatorBrain : NSObject{
	enum Operation waitingOperation;
	double waitingOperand;
}

-(double)performOperation:(Operation) operation;
-(Operation)operationFromString:(NSString *) operation;


@property (nonatomic, assign) double operand;

@end
