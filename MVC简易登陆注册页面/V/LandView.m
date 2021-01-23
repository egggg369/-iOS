//
//  LandView.m
//  MVC简易登陆注册页面
//
//  Created by 郭红乐 on 2020/8/16.
//  Copyright © 2020 无. All rights reserved.
//

#import "LandView.h"

@implementation LandView

- (void)viewInit {
    _accountTextField = [[UITextField alloc] init];
    [_accountTextField setFrame:CGRectMake(100, 100, 200, 40)];
    _accountTextField.layer.borderColor = [UIColor blackColor].CGColor;
    _accountTextField.placeholder = @"请输入帐号";
    _accountTextField.layer.borderWidth = 1;
    [self addSubview:_accountTextField];
    
    _passwordTextField = [[UITextField alloc] init];
    [_passwordTextField setFrame:CGRectMake(100, 160, 200, 40)];
    _passwordTextField.layer.borderColor = [UIColor blackColor].CGColor;
    _passwordTextField.placeholder = @"请输入密码";
    _passwordTextField.secureTextEntry = YES;
    _passwordTextField.layer.borderWidth = 1;
    [self addSubview:_passwordTextField];
    
    _landButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_landButton setFrame:CGRectMake(140, 220, 80, 40)];
    [_landButton setTitle:@"登陆" forState:UIControlStateNormal];
    [_landButton setTintColor:[UIColor blackColor]];
    [_landButton addTarget:self action:@selector(pressLand:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:_landButton];
}

- (void)pressLand:(UIButton *)sender {
    if([_delegate respondsToSelector:@selector(clickButton:)]) {
        [_delegate clickButton:sender];
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
