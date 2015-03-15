//
//  DigitPad.m
//  Calculator
//
//  Created by Daniel Pratt on 3/13/15.
//  Copyright (c) 2015 dgpratt4 Productions. All rights reserved.
//

#import "DigitPad.h"
#import "UIButton+RoudedColored.h"

@implementation DigitPad

-(instancetype)initWithFrame:(CGRect)frame{
	self = [super initWithFrame:frame];
    if (self){
		[self setupDigitButtons];
	}
	return self;
}

-(void)buttonPressed:(UIButton*)sender{
	NSString* digit = [[sender titleLabel] text];
	[_delegate digitPressed:digit];
}

-(void)setupDigitButtons{
	UIColor *color= [UIColor colorWithRed:0.1 green:0.65 blue:0.95 alpha:1];
	
	//Setup 0
	NSString *title = @"0";
	CGRect rect = CGRectMake(0, 3 * self.frame.size.height/4, self.frame.size.width, self.frame.size.height/4);
	UIButton *button = [UIButton roundedButtonInsideFrame:rect text:title backgroundColor:color];
	[button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self addSubview:button];
	
	//Setup 1 through 9
	for(int i = 1; i <= 9; i++){
		title = [NSString stringWithFormat:@"%i", i];

		int floorI = (i - 1); //Built to default i to 0 instead of 1
		int slotX = (floorI % 3); //Every i slotX shifts over a column and resets to 0 every 3i
		int slotY = (2 - floorI / 3); // "2 -" is to reverse order. Every 3i moves up a row
		rect = CGRectMake(slotX * self.frame.size.width/3, slotY * self.frame.size.height/4, self.frame.size.width/3, self.frame.size.height/4);
		
		button = [UIButton roundedButtonInsideFrame:rect text:title backgroundColor:color];
		[button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
		[self addSubview: button];
	}
}

@end
