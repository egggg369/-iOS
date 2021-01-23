//
//  SecondViewController.m
//  block传值
//
//  Created by 郭红乐 on 2020/9/11.
//  Copyright © 2020 无. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _textfield = [[UITextField alloc] init];
    _textfield.frame = CGRectMake(100, 300, 250, 40);
    _textfield.borderStyle = UITextBorderStyleRoundedRect;
    _textfield.delegate = self;
    
    [self.view addSubview:_textfield];
    
    UIButton *btn = [[UIButton alloc] init];
    btn.frame = CGRectMake(250, 500, 100, 40);
    [btn setTitle:@"返回" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
}

- (void) click {
    //得到了要传值的属性
    self.myblock(_textfield.text);
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [_textfield resignFirstResponder];
    return YES;
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
