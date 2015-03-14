//
//  ViewController.h
//  Calculator
//
//  Created by Daniel Pratt on 3/13/15.
//  Copyright (c) 2015 dgpratt4 Productions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalculatorBrain.h"
#import "DigitPad.h"
#import "OperationPad.h"

@interface ViewController : UIViewController <DigitPadProtocal, OperationPadProtocal>
{
	CalculatorBrain *brain;
	UILabel *display;
	DigitPad *digitPad;
	OperationPad *operationPad;
	BOOL userIsInMiddleOfTypingNumber;

}

-(void)digitPressed:(id)sender;
-(void)operationPressed:(id)sender;

@end

