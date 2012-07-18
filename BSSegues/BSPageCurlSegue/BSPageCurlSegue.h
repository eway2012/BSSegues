//
//  BSPageCurlSegue.h
//  BSSegues
//
//  Created by Simon Støvring on 18/07/12.
//  Copyright (c) 2012 Simon B. Støvring. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  Curl directions.
 */
typedef enum
{
    BSPageCurlDirectionUp,
    BSPageCurlDirectionDown
} BSPageCurlDirection;

@interface BSPageCurlSegue : UIStoryboardSegue

/**
 *  Curl direction.
 *  Default is up.
 */
@property (nonatomic, assign) BSPageCurlDirection direction;

/**
 *  Animation duration.
 *  Default is 0.25 seconds.
 */
@property (nonatomic, assign) CGFloat duration;

@end
