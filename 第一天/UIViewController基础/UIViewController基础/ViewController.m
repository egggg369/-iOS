//
//  ViewController.m
//  UIViewController基础
//
//  Created by 郭红乐 on 2020/7/13.
//  Copyright © 2020 无. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//当视图控制器第一次被加载显示视图时，调用此函数
//布局初始化视图来使用，初始化资源使用
- (void)viewDidLoad {
    
    //调用父类的加载视图函数
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIView* view = [[UIView alloc]init];
    
    view.frame = CGRectMake(100, 100, 100, 200);
    
    //将视图添加到当前控制视图上
    [self.view addSubview:view];
    
    view.backgroundColor = [UIColor orangeColor];
    
    self.view.backgroundColor = [UIColor blueColor];
}

//还有一个系统内存过低时，会引发警告信息，调用的函数，这里没有


@end
