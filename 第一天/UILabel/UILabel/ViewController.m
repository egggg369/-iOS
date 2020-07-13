//
//  ViewController.m
//  UILabel
//
//  Created by 郭红乐 on 2020/7/13.
//  Copyright © 2020 无. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//创建UI控件函数
- (void) createUI
{
    //定义并且创建一个UILabel对象
    //UILabel是可以显示在屏幕上，并且可以显示文字的一种UI视图
    UILabel* label = [[UILabel alloc]init];
    
    //显示文字的赋值，字符串对象
    label.text = @"你好，世界！balabalabalabalabalabala";
    //设定label的显示位置
    label.frame = CGRectMake(100, 100, 160, 40);
    //设置label的背景颜色
    label.backgroundColor = [UIColor grayColor];
    //clearcolor是透明颜色
    //self.view.backgroundColor = [UIColor grayColor];
    
    //将label显示到屏幕上
    [self.view addSubview:label];
    
    //设置文字大小，使用系统默认字体
    label.font = [UIFont systemFontOfSize:12];
    
    //设置文字颜色
    label.textColor = [UIColor blueColor];
    
    //label的高级属性
    
    //设定阴影的颜色
    label.shadowColor = [UIColor grayColor];
    //阴影的偏移量
    label.shadowOffset = CGSizeMake(3,10);
    
    //设置文字对齐方式，默认靠左对齐
    label.textAlignment = NSTextAlignmentLeft;
    
    //设定label文字显示的行数，默认值为1，即只用一行来显示
    //其他的》0的行数，按设定行数显示
    //如果值为0：IOS会对文字自动计算需要函数，利用需要显示行数
    label.numberOfLines = 3;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor =[ UIColor whiteColor];
    //调用创建UI函数
    [self createUI];
}


@end
