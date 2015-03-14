//
//  DigitButton.m
//  Calculator
//
//  Created by Daniel Pratt on 3/13/15.
//  Copyright (c) 2015 dgpratt4 Productions. All rights reserved.
//

#import "DigitButton.h"

@implementation DigitButton

-(instancetype)initWithFrame:(CGRect)frame text:(NSString*)text{
	self = [super initWithFrame:frame];
	
	if(self){
		[self.titleLabel setFont: [UIFont systemFontOfSize:30]];
		[self.titleLabel setTextColor:[UIColor whiteColor]];
		[self.titleLabel setTextAlignment:NSTextAlignmentCenter];
		[self setTitle:text forState: UIControlStateNormal];
		self.backgroundColor = [UIColor colorWithRed:0 green:0.6 blue:0.95 alpha:1];
		self.layer.cornerRadius = 3;
		
	}
	return self;
}

@end
