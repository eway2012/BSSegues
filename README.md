BSSegues
=================

Easy to use segues.

Installation
====================

The easiest way to use BSSegues is to copy the files in `BSSegues/` into your Xcode project.

1. In Finder, navigate to your `BSSegues` directory
2. Drag the complete directory into Xcode

Usage
====================

Wherever you want to use BSSegues import `BSSegues.h` like this:

`#import "BSSegues.h"`

In your storyboard you change the style of the segue to `Custom` and then set the segue class to the class of the segue you want to use.
For example, if you want a page curl animation, you would set `Segue Class` to `BSPageCurlSegue`.

If you want to customize a segue, you do this in `-prepareForSegue:segue sender:` in your view controller.
For example, if you wanted to change the direction and duration of a page curl animation, you would do it like this:

    - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
    {
        if ([segue.identifier isEqualToString:@"next"])
        {
            BSPageCurlSegue *pageCurlSegue = (BSPageCurlSegue *) segue;
            pageCurlSegue.direction = BSPageCurlDirectionUp;
            pageCurlSegue.duration = 5.0f;
            segue = pageCurlSegue;
        }
    }
    
For more information on how to use BSSegues, please see `Example.xcodeproj`.