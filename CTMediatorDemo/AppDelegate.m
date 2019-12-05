//
//  AppDelegate.m
//  CTMediatorDemo
//
//  Created by bidongmao on 2019/12/4.
//  Copyright © 2019 bidm. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    ViewController *vc = [[ViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    self.window.rootViewController = nav;
    [self.window makeKeyAndVisible];
    
    return YES;
}

// bidongmao://ModuleCViewController/GetModuleCVC?id=123456
- (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url {
    BaseViewController *vc = [[CTMediator sharedInstance] performActionWithUrl:url completion:nil];
    self.window.rootViewController = vc;
    [self.window makeKeyAndVisible];
    
    return YES;
}
- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(nullable NSString *)sourceApplication annotation:(id)annotation {
    BaseViewController *vc = [[CTMediator sharedInstance] performActionWithUrl:url completion:nil];
    self.window.rootViewController = vc;
    [self.window makeKeyAndVisible];
    
    return YES;
}
- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey, id> *)options {
    BaseViewController *vc = [[CTMediator sharedInstance] performActionWithUrl:url completion:nil];
    self.window.rootViewController = vc;
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
