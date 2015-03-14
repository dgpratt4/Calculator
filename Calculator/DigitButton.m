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
		
		
	}
	return self;
}

@end


/*
 
 DigitButton and operationButton are unnessisary classes since all they do is act as convinient initializers. They don't contain any unique behavior, logic or data, so they're not good candidates for classes. At the very least they should be combined since all thats different is the background color
 could be like
 
 [[RoundedButton alloc] initWithFrame:sdfsd text:sdfsd backgroundColor:asd]
 
 but even then they're just convenience initializers, so they probably shouldn't be classes
 
 you could create a method that generates these for you, doesn't really matter where it lives
 
 + (UIButton *)buttonWithFrame:... title:... color:...;
 
 or if you didn't have a good class to put that method in, you could make it a c funciton
 
 UIButton *button(CGRect frame, NSString *title, NSColor *color) { ... }
 
 by combining the code you'll reduce duplication errors, and have less code to maintain.
 

*/