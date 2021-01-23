//
//  LoginView.h
//  KVC+通知
//
//  Created by 郭红乐 on 2020/8/16.
//  Copyright © 2020 无. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LoginView : UIView

@property (nonatomic, strong) UIButton *loginButton;
@property (nonatomic, strong) UIButton *registerButton;
@property (nonatomic, strong) UITextField *nameTextfield;
@property (nonatomic, strong) UITextField *passTextfield;

- (void)viewInit;

@end

NS_ASSUME_NONNULL_END
