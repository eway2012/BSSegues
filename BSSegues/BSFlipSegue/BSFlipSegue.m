//
//  BSFlipSegue.m
//  BSSegues
//
//  Created by Simon Støvring on 18/07/12.
//  Copyright (c) 2012 Simon B. Støvring. All rights reserved.
//

#import "BSFlipSegue.h"

@implementation BSFlipSegue

@synthesize direction = _direction,
            duration = _duration;

#pragma mark -
#pragma mark Lifecycle

- (id)initWithIdentifier:(NSString *)identifier source:(UIViewController *)source destination:(UIViewController *)destination
{
    if (self = [super initWithIdentifier:identifier source:source destination:destination])
    {
        // Set default settings
        self.direction = BSFlipDirectionDown;
        self.duration = 0.25;
    }
    
    return self;
}

#pragma mark -
#pragma mark Public Methods

- (void)perform
{
    int direction;
    switch (self.direction)
    {
        case BSFlipDirectionLeft:
            direction = UIViewAnimationOptionTransitionFlipFromLeft;
            break;
        case BSFlipDirectionRight:
            direction = UIViewAnimationOptionTransitionFlipFromRight;
            break;
        case BSFlipDirectionUp:
            direction = UIViewAnimationOptionTransitionFlipFromTop;
            break;
        case BSFlipDirectionDown:
            direction = UIViewAnimationOptionTransitionFlipFromBottom;
            break;
        default:
            break;
    }
    
    UIViewController *src = (UIViewController *) self.sourceViewController;
    UIViewController *dst = (UIViewController *) self.destinationViewController;
    [UIView transitionWithView:src.navigationController.view
                          duration:self.duration
                          options:direction
                          animations:^
                          {
                              [src.navigationController pushViewController:dst animated:NO];
                          }
                          completion:NULL];
}

@end
