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
	
	numOfButtons = 5;
	
	if(self){
		[self setupDigitButtons];
	}
	return self;
}

-(void)buttonPressed:(UIButton*)sender{
	NSString* operation = [[sender titleLabel] text];
	[_delegate operationPressed:operation];
}

-(void)setupDigitButtons{
	UIColor *color = [UIColor colorWithRed:0.6 green:0.6 blue:0.6 alpha:1];

	NSString *title = @"÷";
	CGRect rect = CGRectMake(0,0,self.frame.size.width,self.frame.size.height/numOfButtons);
	UIButton *button = [UIButton roundedButtonInsideFrame:rect text:title backgroundColor:color];
	[button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self addSubview:button];
	
	title = @"×";
	rect = CGRectMake(0, self.frame.size.height/numOfButtons,self.frame.size.width,self.frame.size.height/numOfButtons);
	button = [UIButton roundedButtonInsideFrame:rect text:title backgroundColor:color];
	[button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self addSubview: button];
	
	title = @"−";
	rect = CGRectMake(0,2 * self.frame.size.height/numOfButtons,self.frame.size.width,self.frame.size.height/numOfButtons);
	button = [UIButton roundedButtonInsideFrame:rect text:title backgroundColor:color];
	[button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self addSubview: button];
	
	title = @"+";
	rect = CGRectMake(0, 3 * self.frame.size.height/numOfButtons,self.frame.size.width,self.frame.size.height/numOfButtons);
	button = [UIButton roundedButtonInsideFrame:rect text:title backgroundColor:color];
	[button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self addSubview: button];
	
	title = @"=";
	rect = CGRectMake(0, 4 * self.frame.size.height/numOfButtons,self.frame.size.width,self.frame.size.height/numOfButtons);
	button = [UIButton roundedButtonInsideFrame:rect text:title backgroundColor:color];
	[button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self addSubview: button];
}
@end
