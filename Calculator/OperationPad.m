//
//  OperationPad.m
//  Calculator
//
//  Created by Daniel Pratt on 3/13/15.
//  Copyright (c) 2015 dgpratt4 Productions. All rights reserved.
//

#import "OperationPad.h"
#import "UIButton+RoudedColored.h"

@implementation OperationPad

-(instancetype)initWithFrame:(CGRect)frame{
	self = [super initWithFrame:frame];
	
	if(self){
		[self setupOperationButtons];
	}
	return self;
}

-(void)addButtonPressed:(UIButton*)sender{
	[_delegate operationPressed:OperationAdd];
}

-(void)substractButtonPressed:(UIButton*)sender{
    [_delegate operationPressed:OperationSubtract];
}

-(void)multButtonPressed:(UIButton*)sender{
    [_delegate operationPressed:OperationMultiply];
}

-(void)divideButtonPressed:(UIButton*)sender{
    [_delegate operationPressed:OperationDivide];
}

-(void)equalsButtonPressed:(UIButton*)sender{
    [_delegate operationPressed:OperationNone];
}

-(void)setupOperationButtons{
	int numOfButtons = 5;
	UIColor *color = [UIColor colorWithRed:0.6 green:0.6 blue:0.6 alpha:1];

    NSArray *titles = @[@"÷",@"×",@"−",@"+",@"="];
    NSArray *selectors = @[@"divideButtonPressed:",@"multButtonPressed:",@"substractButtonPressed:",@"addButtonPressed:",@"equalsButtonPressed:"];
    for (int i=0; i<numOfButtons; i++) {
        CGRect rect = CGRectMake(0, i*self.frame.size.height/numOfButtons,self.frame.size.width,self.frame.size.height/numOfButtons);
        UIButton *button = [UIButton roundedButtonInsideFrame:rect text:titles[i] backgroundColor:color];
        SEL selector = NSSelectorFromString(selectors[i]);
        [button addTarget:self action:selector forControlEvents:UIControlEventTouchUpInside];
        [self addSubview: button];
    }
}
@end
