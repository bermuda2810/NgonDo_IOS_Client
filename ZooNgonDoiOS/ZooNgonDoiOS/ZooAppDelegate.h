//
//  ZooAppDelegate.h
//  ZooNgonDoiOS
//
//  Created by ViệtBQ on 5/29/12.
//  Copyright (c) 2012 Personal. All rights reserved.
//

#import <UIKit/UIKit.h>
@class GTMOAuthAuthentication;

@class ZooViewController;

@interface ZooAppDelegate : UIResponder <UIApplicationDelegate>;

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ZooViewController *viewController;

@end
