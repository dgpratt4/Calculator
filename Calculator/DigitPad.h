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
-(void)digitPressed:(id)sender; // this should not be id, its error prone and requires that your delegate "know" that sender is a uibutton and that the text of the uibutton is the number that was pressed. since the goal of this is to notify that a number was pressed, it should be - (void)digitPressed:(int)digit; to do this, youll have to take into accoudn the comments on setting target:action in DigitPad.m
@end

@interface DigitPad : UIView

/*
 I'd recommend making delegate weak, instead of assign.
 That way if the delegate object is deallocated and forgets to nil our delegate property, we won't crash when we call it.
 */

@property (nonatomic, assign) id <DigitPadProtocal> delegate;

@end
