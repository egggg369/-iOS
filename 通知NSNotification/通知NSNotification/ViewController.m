//
//  ViewController.m
//  通知NSNotification
//
//  Created by 郭红乐 on 2020/8/15.
//  Copyright © 2020 无. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setUI];
    NSNotificationCenter *center = [NSNotificationCenter defaultCenter];
    
    //1. 注册接收通知
    [center addObserver:self selector:@selector(chanegeLabelText:) name:@"notification" object:nil];
}

- (void) setUI {
    label = [[UILabel alloc] initWithFrame:CGRectMake(100, 200, 200, 30)];
    label.backgroundColor = [UIColor yellowColor];
    label.text = @"没有接收到通知";
    [self.view addSubview:label];
    
    btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 300, 200, 30);
    [btn setTitle:@"发送通知" forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor blueColor]];
    [btn addTarget:self action:@selector(post) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)post {
    NSNotification *notification = [NSNotification notificationWithName:@"notification" object:nil userInfo:@{@"key":@"接收到了通知"}];
    //2. 发送消息
    [[NSNotificationCenter defaultCenter]postNotification:notification];
}

//接收通知后调用的方法
- (void)chanegeLabelText:(NSNotification *)noti {
    //3. 观察者接收到消息后处理消息
    label.text = [noti.userInfo objectForKey:@"key"];
}

- (void)dealloc {
    //4. 移除观察者
    [[NSNotificationCenter defaultCenter]removeObserver:self name:@"notification" object:nil];
}

@end
