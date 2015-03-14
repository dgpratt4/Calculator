//
//  OperationPad.m
//  Calculator
//
//  Created by Daniel Pratt on 3/13/15.
//  Copyright (c) 2015 dgpratt4 Productions. All rights reserved.
//

#import "OperationPad.h"

@implementation OperationPad

@synthesize delegate;

-(instancetype)initWithFrame:(CGRect)frame{
	self = [super initWithFrame:frame];
	
	numOfButtons = 5;
	
	if(self){
		[self setupDigitButtons];
	}
	
	return self;
}

-(void)setupDigitButtons{
	OperationButton *button;
	button = [[OperationButton alloc] initWithFrame:CGRectMake(1,1,self.frame.size.width - 2,self.frame.size.height/numOfButtons - 2) text:@"÷"];
	[button addTarget:delegate action:@selector(operationPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self addSubview: button];
	
	button = [[OperationButton alloc] initWithFrame:CGRectMake(1, self.frame.size.height/numOfButtons + 1,self.frame.size.width - 2,self.frame.size.height/numOfButtons - 2) text:@"×"];
	[button addTarget:delegate action:@selector(operationPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self addSubview: button];
	
	button = [[OperationButton alloc] initWithFrame:CGRectMake(1,2 * self.frame.size.height/numOfButtons + 1,self.frame.size.width - 2,self.frame.size.height/numOfButtons - 2) text:@"−"];
	[button addTarget:delegate action:@selector(operationPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self addSubview: button];
	
	button = [[OperationButton alloc] initWithFrame:CGRectMake(1, 3 * self.frame.size.height/numOfButtons + 1,self.frame.size.width - 2,self.frame.size.height/numOfButtons - 2) text:@"+"];
	[button addTarget:delegate action:@selector(operationPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self addSubview: button];
	
	button = [[OperationButton alloc] initWithFrame:CGRectMake(1, 4 * self.frame.size.height/numOfButtons + 1,self.frame.size.width - 2,self.frame.size.height/numOfButtons - 2) text:@"="];
	[button addTarget:delegate action:@selector(operationPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self addSubview: button];
}
@end
