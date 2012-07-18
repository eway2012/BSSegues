//
//  BSFadeSegue.h
//  BSSegues
//
//  Created by Simon Støvring on 18/07/12.
//  Copyright (c) 2012 Simon B. Støvring. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BSFadeSegue : UIStoryboardSegue

/**
 *  Animation duration.
 *  Default is 0.25 seconds.
 */
@property (nonatomic, assign) CGFloat duration;

@end
