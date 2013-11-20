//
//  HypnosisterAppDelegate.h
//  Hypnosister
//
//  Created by Shane Rogers on 11/19/13.
//  Copyright (c) 2013 Shane Rogers. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "HypnosisterView.h"

@interface HypnosisterAppDelegate : UIResponder <UIApplicationDelegate, UIScrollViewDelegate>
{
    HypnosisterView *view;
}

@property (strong, nonatomic) UIWindow *window;

@end
