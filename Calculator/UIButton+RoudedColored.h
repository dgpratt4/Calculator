//
//  UIButton+RoudedColored.h
//  Calculator
//
//  Created by Daniel Pratt on 3/14/15.
//  Copyright (c) 2015 dgpratt4 Productions. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (RoudedColored)

+(UIButton*)roundedButtonInsideFrame:(CGRect)frame text:(NSString*)text backgroundColor:(UIColor*)color;

@end
