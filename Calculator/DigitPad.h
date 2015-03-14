//
//  DigitPad.h
//  Calculator
//
//  Created by Daniel Pratt on 3/13/15.
//  Copyright (c) 2015 dgpratt4 Productions. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DigitPadProtocal <NSObject>

-(void)digitPressed:(NSString*)digit;

@end

@interface DigitPad : UIView

@property (nonatomic, weak) id <DigitPadProtocal> delegate;

@end
