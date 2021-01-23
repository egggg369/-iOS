//
//  ViewController.m
//  测试cell自适应高度
//
//  Created by 郭红乐 on 2020/8/1.
//  Copyright © 2020 无. All rights reserved.
//

#import "ViewController.h"
#import "ChatViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton *btn = [[UIButton alloc] init];
    btn.frame = CGRectMake(40, 60, 100, 40);
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:btn];
}

- (void) click{
    //ChatViewController *chatViewController =
    ChatViewController *chatViewController = [[ChatViewController alloc]init];
    [self.navigationController pushViewController:chatViewController animated:NO];
}

@end
