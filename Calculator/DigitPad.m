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
	UIButton *button;
	UIColor *color= [UIColor colorWithRed:0 green:0.6 blue:0.95 alpha:1];
	
	CGRect rect = CGRectMake(1, 3 * self.frame.size.height/4 + 1, self.frame.size.width -2, self.frame.size.height/4 -2);
	// ^ this is dificult to understand, I might consider using autolayout
	NSString *title = @"0";
	button = [UIButton roundedButtonWithFrame:rect text:title backgroundColor:color];
	[button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self addSubview:button];
	
	for(int i = 1; i <= 9; i++){
		rect = CGRectMake(((i - 1)%3) * self.frame.size.width/3 + 1, (2-(i-1)/3) * self.frame.size.height/4 + 1, self.frame.size.width/3 -2, self.frame.size.height/4 -2);
         // ^ this is dificult to understand, I might consider using autolayout
		title = [NSString stringWithFormat:@"%i", i];
		button = [UIButton roundedButtonWithFrame:rect text:title backgroundColor:color];
		[button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
		[self addSubview: button];
	}
}




@end
