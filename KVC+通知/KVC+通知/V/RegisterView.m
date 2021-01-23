//
//  RegisterView.m
//  KVC+通知
//
//  Created by 郭红乐 on 2020/8/16.
//  Copyright © 2020 无. All rights reserved.
//

#import "RegisterView.h"

@implementation RegisterView

- (void)viewInit {
    _confirmButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_confirmButton setFrame:CGRectMake(140, 220, 80, 40)];
    [_confirmButton setTitle:@"确认" forState:UIControlStateNormal];
    [_confirmButton setTintColor:[UIColor blackColor]];
    //[_confirmButton addTarget:self action:@selector(pressConfirm:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:_confirmButton];
    
    _nameTextField = [[UITextField alloc] init];
    [_nameTextField setFrame:CGRectMake(100, 100, 200, 40)];
    _nameTextField.layer.borderColor = [UIColor blackColor].CGColor;
    _nameTextField.placeholder = @"请输入帐号";
    _nameTextField.layer.borderWidth = 1;
    [self addSubview:_nameTextField];
    
    _passTextField = [[UITextField alloc] init];
    [_passTextField setFrame:CGRectMake(100, 160, 200, 40)];
    _passTextField.layer.borderColor = [UIColor blackColor].CGColor;
    _passTextField.placeholder = @"请输入密码";
    _passTextField.layer.borderWidth = 1;
    [self addSubview:_passTextField];
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects perfo/Users/guohongle/Desktop/-iOS/KVC+通知/KVC+通知/SceneDelegate.mrmance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
