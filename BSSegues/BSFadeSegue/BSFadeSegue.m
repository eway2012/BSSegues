//
//  BSFadeSegue.m
//  BSSegues
//
//  Created by Simon Støvring on 18/07/12.
//  Copyright (c) 2012 Simon B. Støvring. All rights reserved.
//

#import "BSFadeSegue.h"

@implementation BSFadeSegue

@synthesize duration = _duration;

#pragma mark -
#pragma mark Lifecycle

- (id)initWithIdentifier:(NSString *)identifier source:(UIViewController *)source destination:(UIViewController *)destination
{
    if (self = [super initWithIdentifier:identifier source:source destination:destination])
    {
        // Set default settings
        self.duration = 0.25;
    }
    
    return self;
}

#pragma mark -
#pragma mark Public Methods

- (void)perform
{
    
    UIViewController *src = (UIViewController *) self.sourceViewController;
    UIViewController *dst = (UIViewController *) self.destinationViewController;
    [UIView transitionWithView:src.navigationController.view
                          duration:self.duration
                          options:UIViewAnimationOptionTransitionCrossDissolve
                          animations:^
                          {
                              [src.navigationController pushViewController:dst animated:NO];
                          }
                          completion:NULL];
}

@end
