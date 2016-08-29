//
//  AppDelegate.m
//  PYTabBar11
//
//  Created by Apple on 16/8/25.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "A1ViewController.h"
#import "A2ViewController.h"
#import "A3ViewController.h"
#import "A4ViewController.h"

#import "TabBarController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //方法一: 系统自带
//    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
//    self.window.backgroundColor = [UIColor whiteColor];
//    
//    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
//    ViewController *VC = [sb instantiateInitialViewController];
//    A1ViewController *VC1 = [[A1ViewController alloc] init];
//    A2ViewController *VC2 = [[A2ViewController alloc] init];
//    A3ViewController *VC3 = [[A3ViewController alloc] init];
//    A4ViewController *VC4 = [[A4ViewController alloc] init];
//
//    UINavigationController *N1 = [[UINavigationController alloc] initWithRootViewController:VC];
//    UINavigationController *N2 = [[UINavigationController alloc] initWithRootViewController:VC1];
//    UINavigationController *N3 = [[UINavigationController alloc] initWithRootViewController:VC2];
//    UINavigationController *N4 = [[UINavigationController alloc] initWithRootViewController:VC3];
//    UINavigationController *N5 = [[UINavigationController alloc] initWithRootViewController:VC4];
//    
//    N1.tabBarItem.title = @"11";
//    N1.tabBarItem.image = [[UIImage imageNamed:@"2"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    N2.tabBarItem.title = @"22";
//    N2.tabBarItem.image = [[UIImage imageNamed:@"2"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];    N3.tabBarItem.title = @"33";
//    N3.tabBarItem.image = [[UIImage imageNamed:@"2"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];    N4.tabBarItem.title = @"44";
//    N4.tabBarItem.image = [[UIImage imageNamed:@"2"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];    N5.tabBarItem.title = @"55";
//    N5.tabBarItem.image = [[UIImage imageNamed:@"2"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    
//    UITabBarController *tabBar = [[UITabBarController alloc] init];
//    tabBar.viewControllers = @[N1, N2, N3, N4, N5];
//    self.window.rootViewController = tabBar;
//    [self.window makeKeyWindow];

    
    //方法二: 自定义
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    

    TabBarController *tabBar = [[TabBarController alloc] init];
//    UINavigationController *NA = [[UINavigationController alloc] initWithRootViewController:tabBar];
    self.window.rootViewController = tabBar;
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
