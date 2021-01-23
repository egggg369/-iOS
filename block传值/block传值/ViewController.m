//
//  ViewController.m
//  block传值
//
//  Created by 郭红乐 on 2020/9/11.
//  Copyright © 2020 无. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _text = [[UITextField alloc] init];
    _text.frame = CGRectMake(100, 500, 250, 40);
    _text.placeholder = @"nihao ";
    _text.borderStyle = UITextBorderStyleRoundedRect;
    _text.delegate = self;
    [self.view addSubview:_text];
    
    _btn1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    //_btn1 = [[UIButton alloc] init];
    _btn1.frame = CGRectMake(200, 560, 100, 40);
    [_btn1 addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [_btn1 setTitle:@"传值" forState:UIControlStateNormal];
    [self.view addSubview:_btn1];
}

- (void) click{
    SecondViewController *s = [[SecondViewController alloc] init];
    s.myblock = ^(NSString * str) {
        _text.text = str;
    };
    
    [self presentViewController:s animated:YES completion:nil];
}

@end
