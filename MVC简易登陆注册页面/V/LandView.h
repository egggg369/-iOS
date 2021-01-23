//
//  LandView.h
//  MVC简易登陆注册页面
//
//  Created by 郭红乐 on 2020/8/16.
//  Copyright © 2020 无. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol PassButtonDelegate <NSObject>

- (void)clickButton: (UIButton *)sender;

@end
@interface LandView : UIView

@property (nonatomic, strong) UITextField *accountTextField;
@property (nonatomic, strong) UITextField *passwordTextField;
@property (nonatomic, strong) UIButton *landButton;


@property (nonatomic, weak) id <PassButtonDelegate> delegate;

- (void)viewInit;

@end

NS_ASSUME_NONNULL_END
