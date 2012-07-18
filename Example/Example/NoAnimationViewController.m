//
//  NoAnimationViewController.m
//  Example
//
//  Created by Simon Støvring on 18/07/12.
//  Copyright (c) 2012 Simon B. Støvring. All rights reserved.
//

#import "NoAnimationViewController.h"
#import "BSSegues.h"

@implementation NoAnimationViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Go to next view controller in 6 seconds
    [NSTimer scheduledTimerWithTimeInterval:6.0f target:self selector:@selector(next:) userInfo:nil repeats:NO];
}

- (void)next:(id)sender
{
    [self performSegueWithIdentifier:@"next" sender:self];
}

@end
