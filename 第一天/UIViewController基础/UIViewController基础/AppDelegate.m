//
//  AppDelegate.m
//  UIViewController基础
//
//  Created by 郭红乐 on 2020/7/13.
//  Copyright © 2020 无. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //创建一个window对象
    //属于AppDelegate的属性
    //UIScreen:表示屏幕硬件类
    //mainScreen:获得主屏幕信息
    //当前手机屏幕尺寸
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    //创建视图控制器对象
    ViewController* vcRoot = [[ViewController alloc]init];
    
    //对窗口的根视图控制器进行赋值操作
    //整个UIKit框架中只有一个根视图控制器，属于windos属性
    //视图控制器用来管理界面和处理界面的逻辑类对象
    //程序启动前必须对根视图控制器赋值
    self.window.rootViewController = vcRoot;
    
    //将window作为主视图并且显示出来
    [self.window makeKeyAndVisible];
    
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
