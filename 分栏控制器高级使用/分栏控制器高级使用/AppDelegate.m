//
//  AppDelegate.m
//  分栏控制器高级使用
//
//  Created by 郭红乐 on 2020/7/15.
//  Copyright © 2020 无. All rights reserved.
//

#import "AppDelegate.h"
#import "VCFirst.h"
#import "VCSecond.h"
#import "VCThird.h"
#import "VCFour.h"
#import "VCFive.h"
#import "VCSix.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //创建对象及尺寸
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen]bounds]];
    //显示出来
    self.window.backgroundColor = [UIColor whiteColor];
    
    VCFirst* vc01 = [[VCFirst alloc] init];
    VCSecond* vc02 = [[VCSecond alloc] init];
    VCThird* vc03 = [[VCThird alloc] init];
    VCFour* vc04 = [[VCFour alloc] init];
    VCFive* vc05 = [[VCFive alloc] init];
    VCSix* vc06 = [[VCSix alloc] init];
    
    vc01.view.backgroundColor = [UIColor blueColor];
    vc02.view.backgroundColor = [UIColor yellowColor];
    vc03.view.backgroundColor = [UIColor redColor];
    vc04.view.backgroundColor = [UIColor grayColor];
    vc05.view.backgroundColor = [UIColor greenColor];
    vc06.view.backgroundColor = [UIColor orangeColor];
    
    vc01.title = @"视图1";
    vc02.title = @"视图2";
    vc03.title = @"视图3";
    vc04.title = @"视图4";
    vc05.title = @"视图5";
    vc06.title = @"视图6";
    
    //创建数组
    NSArray* arrayVC = [NSArray arrayWithObjects:vc01, vc02, vc03, vc04, vc05, vc06,nil];
    
    UITabBarController* tbc = [[UITabBarController alloc]init];
    
    tbc.viewControllers = arrayVC;
    
    //tbc.tabBar.translucent = NO;
    
    self.window.rootViewController = tbc;
    vc01.view.backgroundColor = [UIColor redColor];
    
    //改变工具栏颜色
    tbc.tabBar.barTintColor = [UIColor blueColor];
    //改变按钮文字颜色
    //tbc.tabBar.tintColor = [UIColor blackColor];
    
    tbc.selectedIndex = 2;
    
    //设置一个代理
    //tbc.delegate = self;
    
    [self.window makeKeyWindow];
    //self.window.windowLevel = UIWindowLevelNormal;
    self.window.hidden = NO;
    
    return YES;
}

- (void) tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray<__kindof UIViewController *> *)viewControllers changed:(BOOL)changed {
    NSLog(@"vcs = %@", viewControllers);
    if(changed == YES) {
        NSLog(@"顺序发生改变");
    }
    NSLog(@"已经结束编辑！");
}

- (void) tabBarController:(UITabBarController *)tabBarController willEndCustomizingViewControllers:(NSArray<__kindof UIViewController *> *)viewControllers changed:(BOOL)changed {
    NSLog(@"即将结束前");
}

- (void) tabBarController:(UITabBarController *)tabBarController willBeginCustomizingViewControllers:(NSArray<__kindof UIViewController *> *)viewControllers {
    NSLog(@"编辑器前");
}

- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController {
    if(tabBarController.viewControllers[tabBarController.selectedIndex] == viewController) {
        NSLog(@"OK");
    }
    NSLog(@"选中控制器对象");
}

#pragma mark - UISceneSession lifecycle





@end
