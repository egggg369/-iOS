//
//  ViewController.m
//  UIButton事件处理
//
//  Created by 郭红乐 on 2020/7/13.
//  Copyright © 2020 无. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//创建按钮函数
- (void) createBtn
{
    //创建圆角按钮
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btn.frame = CGRectMake(100, 100, 80, 40);
    
    [btn setTitle:@"按钮" forState:UIControlStateNormal];
    
    //向按钮添加时间函数
    //p1:实现的对象是“谁”
    //p2:@selector(pressBtn)函数对象，当p3成立时调用函数
    //p3:UIControlEvents:事件处理函数
    //TouchUpInside当手指离开按钮并且在按钮范围内。此时触发事件。
    [btn addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
    
    [btn addTarget:self action:@selector(touchDown) forControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview:btn];
    
    UIButton* btn02 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btn02.frame = CGRectMake(100, 200, 80, 40);
    
    [btn02 setTitle:@"按钮02" forState:UIControlStateNormal];
    
    //可以多个按钮使用同一个事件函数来处理不同按钮的事件
    [btn02 addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn02];
    
    btn.tag = 101;
    btn02.tag = 102;
}

- (void) pressBtn02
{
    NSLog(@"按钮02被按下！");
}

- (void) touchDown
{
    NSLog(@"此按钮被触碰！");
}

//利用参数本身带有的参数区分
- (void) pressBtn:(UIButton*)btn
{
    if(btn.tag == 101) {
        NSLog(@"此按钮01按下！");
    }
    if(btn.tag == 102) {
        NSLog(@"此按钮02按下！");
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self createBtn];
}


@end
