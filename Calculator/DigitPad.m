//
//  DigitPad.m
//  Calculator
//
//  Created by Daniel Pratt on 3/13/15.
//  Copyright (c) 2015 dgpratt4 Productions. All rights reserved.
//

#import "DigitPad.h"

@implementation DigitPad

@synthesize delegate; // this isn't needed if you don't mind accessing the ivar with _delegate

-(instancetype)initWithFrame:(CGRect)frame{
	self = [super initWithFrame:frame];
	
    if(self){ // style: use spaces. if (self) {
		[self setupDigitButtons];
	}
	
	return self;
}

-(void)setupDigitButtons{
	DigitButton *button;
	button = [[DigitButton alloc] initWithFrame:CGRectMake(1, 3 * self.frame.size.height/4 + 1, self.frame.size.width -1, self.frame.size.height/4 -1) text:@"0"];
	
    // this has same bug as below
    [button addTarget:delegate action:@selector(digitPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self addSubview:button];
	
	for(int i = 1; i <= 9; i++){
        
        /*
         I would seperate the statement below into three, since its doing three things: calculating the rect, generating title, allocating a digit button
         
         CGRect  = CGRectMake(((i - 1)%3) * self.frame.size.width/3 + 1, 
         (2-(i-1)/3) * self.frame.size.height/4 + 1, 
         self.frame.size.width/3 -1, 
         self.frame.size.height/4 -1);
         // ^ this is dificult to understand, I might consider using autolayout
         
         
         NSString *title = [NSString stringWithFormat:@"%i", i];
         button = [[DigitButton alloc] initWithFrame:frame text:title];
         
         */
        
        
		button = [[DigitButton alloc] initWithFrame:CGRectMake(((i - 1)%3) * self.frame.size.width/3 + 1, (2-(i-1)/3) * self.frame.size.height/4 + 1, self.frame.size.width/3 -1, self.frame.size.height/4 -1) text: [NSString stringWithFormat:@"%i", i]];
        
        
        
        /*
         
         when this code is run, delegate is nil, see for yourself by setting a breakpoint here in the debugger.
         the docs say that when the target is nil it goes up the responder chain looking for someone that will respond to the action (in your case digitPressed:), so this happily works out for you because the class that you want to be the delegate (viewcontroller) is in the responder chain, so it doesn't matter that here you're setting target to nil. if you used a delegate that wasn't in the responder chain this would crash.
         
         
         even if your delegate wasn't nil here, if you changed the deleate after this method was run, it would never get called
         For this reason It's a bad idea to set the delegate as the target directly.
         
         so what you should do is:
         
         [button addTarget:self action:@selector(blaDoesntMatter:) forControlEvents:UIControlEventTouchUpInside];
         
         ...
         
         - (void)blaDoesntMatter:(id)sender
         {
            [self.delegate digitPressed:sender];
         }
         
         */
        
        
		[button addTarget:delegate action:@selector(digitPressed:) forControlEvents:UIControlEventTouchUpInside];
		[self addSubview: button];
	}
}


@end
