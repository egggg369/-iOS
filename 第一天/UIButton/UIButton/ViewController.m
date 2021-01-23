//
//  ViewController.m
//  UIButton
//
//  Created by 郭红乐 on 2020/7/13.
//  Copyright © 2020 无. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
//创建普通按钮函数
- (void) createUIRectButton
{
    //创建一个btn对象，根据类型来创建btn
    //圆角类型btn:UIButtonTypeRoundedRect
    //通过类方法来创建buttonWith
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeSystem];
    
    //设置button按钮的位置
    btn.frame = CGRectMake(100, 100, 100, 40);
    
    //设置按钮的文字内容
    //@parameter
    //p1:字符串类型，显示到按钮上的文字
    //p2:设置设置文字显示的状态类型：UIControlStateNormal，正常状态
    [btn setTitle:@"按钮01" forState:UIControlStateNormal];
    
    //p1:显示的文字
    //p2:显示文字的状态：UIControlStateHighlighted，按下状态
    [btn setTitle:@"按下按钮" forState:UIControlStateHighlighted];
    
    //设置背景颜色
    btn.backgroundColor = [UIColor grayColor];
    
    //设置文字颜色
    //p1:颜色
    //p2:状态
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    //设置按下按钮的颜色
    [btn setTitleColor:[UIColor orangeColor] forState:UIControlStateHighlighted];
    
    //设置按钮的风格颜色，如果有titlecolor这个就没啥用了
    [btn setTintColor:[UIColor whiteColor]];
    
    //设置字体大小titleLabel.font，UILabel空间
    btn.titleLabel.font = [UIFont systemFontOfSize:20];
    
    //添加到视图中并显示
    [self.view addSubview:btn];
    
}

//创建一个可以显示图片的按钮
- (void) createImageBtn
{   //创建一个自定义类型btn
    UIButton* btnImage = [UIButton buttonWithType:UIButtonTypeCustom];
    
    btnImage.frame = CGRectMake(100, 200, 100, 100);
    
    UIImage* icon01 = [UIImage imageNamed:@"388714afde3c8d8b7c1e8650b2b14413.jpg"];
    
    UIImage* icon02 = [UIImage imageNamed:@"346596cfd65e4defe82cbb24917ba809.jpg"];
    
    //设置按钮图片方法设置
    //p1:显示的图片对象
    //p2:控件的状态
    [btnImage setImage:icon01 forState:UIControlStateNormal];
    
    [btnImage setImage:icon02 forState:UIControlStateHighlighted];
    
    [self.view addSubview:btnImage];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self createUIRectButton];
    
    [self createImageBtn];
}


@end
