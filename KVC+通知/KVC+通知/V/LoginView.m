//
//  LoginView.m
//  KVC+通知
//
//  Created by 郭红乐 on 2020/8/16.
//  Copyright © 2020 无. All rights reserved.
//

#import "LoginView.h"

@implementation LoginView

- (void)viewInit {
    _registerButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_registerButton setFrame:CGRectMake(220, 220, 80, 40)];
    [_registerButton setTitle:@"注册" forState:UIControlStateNormal];
    [_registerButton setTintColor:[UIColor blackColor]];
    //[_registerButton addTarget:self action:@selector(pressRegister:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:_registerButton];
    
    _loginButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_loginButton setFrame:CGRectMake(140, 220, 80, 40)];
    [_loginButton setTitle:@"登陆" forState:UIControlStateNormal];
    [_loginButton setTintColor:[UIColor blackColor]];
    //[_loginButton addTarget:self action:@selector(pressLogin:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:_loginButton];
    
    _nameTextfield = [[UITextField alloc] init];
    [_nameTextfield setFrame:CGRectMake(100, 100, 200, 40)];
    _nameTextfield.layer.borderColor = [UIColor blackColor].CGColor;
    _nameTextfield.placeholder = @"请输入帐号";
    _nameTextfield.layer.borderWidth = 1;
    [self addSubview:_nameTextfield];
    
    _passTextfield = [[UITextField alloc] init];
    [_passTextfield setFrame:CGRectMake(100, 160, 200, 40)];
    _passTextfield.layer.borderColor = [UIColor blackColor].CGColor;
    _passTextfield.placeholder = @"请输入密码";
    _passTextfield.layer.borderWidth = 1;
    [self addSubview:_passTextfield];
    
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
