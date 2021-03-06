//
//  ViewController.m
//  Calculator
//
//  Created by Daniel Pratt on 3/13/15.
//  Copyright (c) 2015 dgpratt4 Productions. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	
	display = [[UILabel alloc] initWithFrame:CGRectMake(20, 0, self.view.frame.size.width - 40, self.view.frame.size.height/5)];
	[display setTextColor:UIColor.blackColor];
	[display setFont:[UIFont systemFontOfSize:70]];
	[display setTextAlignment:NSTextAlignmentRight];
	[display setText:@"0"];
	[self.view addSubview:display];
	
	digitPad = [[DigitPad alloc] initWithFrame:CGRectMake(0, display.frame.size.height, 3.0/4.0 * self.view.frame.size.width, self.view.frame.size.height - display.frame.size.height)];
	digitPad.delegate = self;
	[self.view addSubview:digitPad];
	
	operationPad = [[OperationPad alloc] initWithFrame:CGRectMake(digitPad.frame.size.width, display.frame.size.height, self.view.frame.size.width/4, self.view.frame.size.height - display.frame.size.height)];
	operationPad.delegate = self;
	[self.view addSubview:operationPad];
	
	brain = [[CalculatorBrain alloc] init];
}

-(void)digitPressed:(int)digit{
    
    double newValue = [display.text doubleValue] * 10 + digit;
    [display setText:[NSString stringWithFormat:@"%.0f",newValue]];

}

-(void)operationPressed:(Operation)op{

    [brain setOperand:[display.text doubleValue]];
	double result = [brain performOperation:op];
	[display setText:[NSString stringWithFormat:@"%g",result]];
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

@end
