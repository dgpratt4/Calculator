//
//  OperationPad.h
//  Calculator
//
//  Created by Daniel Pratt on 3/13/15.
//  Copyright (c) 2015 dgpratt4 Productions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OperationButton.h"

@protocol OperationPadProtocal <NSObject>
-(void)operationPressed:(id)sender;
@end

@interface OperationPad : UIView{
	int numOfButtons;
}
@property (nonatomic, assign) id <OperationPadProtocal> delegate;
@end
