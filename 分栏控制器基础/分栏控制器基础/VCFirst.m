//
//  VCFirst.m
//  分栏控制器基础
//
//  Created by 郭红乐 on 2020/7/15.
//  Copyright © 2020 无. All rights reserved.
//

#import "VCFirst.h"

@interface VCFirst ()

@end

@implementation VCFirst

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //创建一个分栏按钮对象
    //p1:文字
    //p2:显示图片图标
    //p3:设置按钮的tag
    //UITabBarItem* tabBarItem = [[UITabBarItem alloc]initWithTitle:@"11" image:nil tag:101];
    
    //self.tabBarItem = tabBarItem;
    
    //根据系统风格创建分栏按钮
    //p1:系统风格设定
    UITabBarItem* tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemContacts tag:101];
    //按钮右上角的提示信息
    //通常用来提示未读的信息
    tabBarItem.badgeValue = @"2";
    
    self.tabBarItem = tabBarItem;
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
