//
//  UIButton+RoudedColored.m
//  Calculator
//
//  Created by Daniel Pratt on 3/14/15.
//  Copyright (c) 2015 dgpratt4 Productions. All rights reserved.
//

#import "UIButton+RoudedColored.h"

@implementation UIButton (RoudedColored)

+(UIButton*)roundedButtonInsideFrame:(CGRect)frame text:(NSString*)text backgroundColor:(UIColor*)color{

	UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(frame.origin.x + 1, frame.origin.y + 1, frame.size.width - 2, frame.size.height - 2)];
	[button.titleLabel setFont: [UIFont systemFontOfSize:30]];
	[button.titleLabel setTextColor:[UIColor whiteColor]];
	[button.titleLabel setTextAlignment:NSTextAlignmentCenter];
	[button setTitle:text forState: UIControlStateNormal];
	button.backgroundColor = color;
	button.layer.cornerRadius = 3;
	
	return button;
}

@end
