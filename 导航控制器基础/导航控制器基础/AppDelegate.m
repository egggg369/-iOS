//
//  AppDelegate.m
//  导航控制器基础
//
//  Created by 郭红乐 on 2020/7/15.
//  Copyright © 2020 无. All rights reserved.
//

#import "AppDelegate.h"
//#import "VCRoot.h"
#import "ViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    /*self.window = [[UIWindow alloc]init];
    _window.backgroundColor = [UIColor whiteColor];
    VCRoot* root = [[VCRoot alloc]init];
    
    UINavigationController* nav = [[UINavigationController alloc] initWithRootViewController:root];
    
    self.window.rootViewController = nav;*/
    
    self.window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    ViewController *vc = [[ViewController alloc]init];
    UINavigationController* nav = [[UINavigationController alloc] initWithRootViewController:vc];
    self.window.rootViewController = nav;
    [self.window makeKeyAndVisible];
    
    return YES;
    
}



#pragma mark - UISceneSession lifecycle



@end
