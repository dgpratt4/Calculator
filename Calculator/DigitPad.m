//
//  DigitPad.m
//  Calculator
//
//  Created by Daniel Pratt on 3/13/15.
//  Copyright (c) 2015 dgpratt4 Productions. All rights reserved.
//

#import "DigitPad.h"

@implementation DigitPad

@synthesize delegate;

-(instancetype)initWithFrame:(CGRect)frame{
	self = [super initWithFrame:frame];
	
	if(self){
		[self setupDigitButtons];
	}
	
	return self;
}

-(void)setupDigitButtons{
	DigitButton *button;
	button = [[DigitButton alloc] initWithFrame:CGRectMake(1, 3 * self.frame.size.height/4 + 1, self.frame.size.width -1, self.frame.size.height/4 -1) text:@"0"];
	[button addTarget:delegate action:@selector(digitPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self addSubview:button];
	
	for(int i = 1; i <= 9; i++){
		button = [[DigitButton alloc] initWithFrame:CGRectMake(((i - 1)%3) * self.frame.size.width/3 + 1, (2-(i-1)/3) * self.frame.size.height/4 + 1, self.frame.size.width/3 -1, self.frame.size.height/4 -1) text: [NSString stringWithFormat:@"%i", i]];
		[button addTarget:delegate action:@selector(digitPressed:) forControlEvents:UIControlEventTouchUpInside];
		[self addSubview: button];
	}
}

@end
