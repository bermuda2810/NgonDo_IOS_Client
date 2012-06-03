//
//  ZooAppDelegate.m
//  ZooNgonDoiOS
//
//  Created by ViệtBQ on 5/29/12.
//  Copyright (c) 2012 Personal. All rights reserved.
//

#import "ZooAppDelegate.h"
#import "ZooViewController.h"
#import "RKObjectManager.h"
#import "RKURL.h"
#import "RKRequest.h"

@implementation ZooAppDelegate

@synthesize window = _window;
@synthesize viewController = _viewController;

NSString *const CONSUMER_KEY = @"0a9fd3a81e14b1ca6e9a60ba6751488878c66737";
NSString *const CONSUMER_SECRET = @"99e179f81ae8c8613ef840e0d36d68f3c9fab11b";
NSString *const BASE_URL = @"http://ngon.do/";


- (void)dealloc
{
    [_window release];
    [_viewController release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    RKObjectManager *objManager = [RKObjectManager sharedManager];
    objManager.client.authenticationType = RKRequestAuthenticationTypeOAuth1; 
    objManager.client.baseURL = [[RKURL alloc] initWithString:BASE_URL];
    objManager.client.OAuth1ConsumerKey = CONSUMER_KEY;
    objManager.client.OAuth1ConsumerSecret = CONSUMER_SECRET;
    
    objManager.client.OAuth1AccessToken = @"";
    objManager.client.OAuth1AccessTokenSecret=@"";
    
//    RKRequest *requestToken = [[RKClient alloc] initWithBaseURLString:BASE_URL];
//    requestToken.username = @"duynk";
//    requestToken.password = @"papahotel";
   
    
    RKClient * client = [[RKClient alloc] initWithBaseURLString:BASE_URL];
   
//    objManager.client.accessToken = @"YOUR ACCESS TOKEN HERE";
//    objManager.client.accessTokenSecret = @"YOUR ACCESS TOKEN SECRET HERE";
    
    
    // Override point for customization after application launch.
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        self.viewController = [[[ZooViewController alloc] initWithNibName:@"ZooViewController_iPhone" bundle:nil] autorelease];
    } else {
        self.viewController = [[[ZooViewController alloc] initWithNibName:@"ZooViewController_iPad" bundle:nil] autorelease];
    }
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

@end
