//
//  BSNoAnimationSegue.m
//  BSSegues
//
//  Created by Simon Støvring on 18/07/12.
//  Copyright (c) 2012 Simon B. Støvring. All rights reserved.
//

#import "BSNoAnimationSegue.h"

@implementation BSNoAnimationSegue

#pragma mark -
#pragma mark Public Methods

- (void)perform
{
    UIViewController *src = (UIViewController *) self.sourceViewController;
    UIViewController *dst = (UIViewController *) self.destinationViewController;
    [src.navigationController pushViewController:dst animated:NO];
}

@end
