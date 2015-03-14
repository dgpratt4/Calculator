//
//  DigitPad.h
//  Calculator
//
//  Created by Daniel Pratt on 3/13/15.
//  Copyright (c) 2015 dgpratt4 Productions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DigitButton.h"

@protocol DigitPadProtocal <NSObject>
-(void)digitPressed:(id)sender;
@end

@interface DigitPad : UIView
@property (nonatomic, assign) id <DigitPadProtocal> delegate;
@end
