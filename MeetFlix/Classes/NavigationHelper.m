//
//  NavigationHelper.m
//  MeetFlix
//
//  Created by Fabio Lindemberg on 21/07/20.
//  Copyright © 2020 Fabio Lindemberg. All rights reserved.
//

#import "NavigationHelper.h"

@implementation NavigationHelper

+ (void) navigateTo: (UIViewController *) viewController {
    UINavigationController * navigationController = [UIApplication sharedApplication].delegate.window.rootViewController;
    [navigationController pushViewController: viewController
                                    animated: YES];
}

@end
