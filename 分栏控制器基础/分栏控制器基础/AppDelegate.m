//
//  AppDelegate.m
//  分栏控制器基础
//
//  Created by 郭红乐 on 2020/7/15.
//  Copyright © 2020 无. All rights reserved.
//

#import "AppDelegate.h"
#import "VCFirst.h"
#import "VCSecond.h"
#import "VCThird.h"
#import "FourViewController.h"
#import "FiveViewController.h"
#import "SixViewController.h"
@interface AppDelegate ()//UITabBarController

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    [self.window makeKeyAndVisible];
    
    //创建控制器一
    VCFirst* vcFirst = [[VCFirst alloc] init];
    //蓝色背景
    vcFirst.view.backgroundColor = [UIColor blueColor];
    
    //创建视图控制器二
    VCSecond* vcSecond = [[VCSecond alloc] init];
    //黄色背景
    vcSecond.view.backgroundColor = [UIColor yellowColor];
    
    //创建控制器三
    VCThird* vcThird = [[VCThird alloc] init];
    //橙色背景
    vcThird.view.backgroundColor = [UIColor orangeColor];
    
    //创建控制器三
    FourViewController* fourViewController = [[FourViewController alloc] init];
    //橙色背景
    fourViewController.view.backgroundColor = [UIColor orangeColor];
    
    //创建控制器三
    FiveViewController* fiveViewController = [[FiveViewController alloc] init];
    //橙色背景
    fiveViewController.view.backgroundColor = [UIColor orangeColor];
    
    //创建控制器三
    SixViewController* sixViewController = [[SixViewController alloc] init];
    //橙色背景
    sixViewController.view.backgroundColor = [UIColor orangeColor];
    
    vcFirst.title = @"视图1";
    vcSecond.title = @"视图2";
    vcThird.title = @"视图3";
    
    
    
    //创建分栏控制器对象
    UITabBarController* tbController = [[UITabBarController alloc] init];
    
    //创建一个控制器数组对象
    //将所有要被分栏控制器管理的对象添加到数组中
    //NSArray* arrayVC = [NSArray arrayWithObjects:vcFirst,vcSecond, vcThird, nil];
    NSArray* arrayVC = [NSArray arrayWithObjects:vcFirst,vcSecond, vcThird, vcFirst,vcFirst,vcFirst,nil];
    //将分栏视图控制器管理数组赋值
    tbController.viewControllers = arrayVC;
    
    //将分栏控制器作为根视图控制器
    self.window.rootViewController = vcFirst;
    
    //设置选中的视图控制器的索引
    //通过索引来确定显示哪一个控制器
    tbController.selectedIndex = 2;
    
    //当前显示的控制器对象
    if(tbController.selectedViewController == vcThird) {
        NSLog(@"当前显示的是控制器3");
    }
    
    //设置分栏控制器的工具栏的透明度
    tbController.tabBar.translucent = NO;
    return YES;
}


#pragma mark - UISceneSession lifecycle



@end
