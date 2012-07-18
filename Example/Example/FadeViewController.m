//
//  FadeViewController.m
//  Example
//
//  Created by Simon Støvring on 18/07/12.
//  Copyright (c) 2012 Simon B. Støvring. All rights reserved.
//

#import "FadeViewController.h"
#import "BSSegues.h"

@implementation FadeViewController

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

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"next"])
    {
        BSFadeSegue *fadeSegue = (BSFadeSegue *) segue;
        fadeSegue.duration = 5.0f;
        segue = fadeSegue;
    }
}

@end
