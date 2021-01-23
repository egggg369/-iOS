//
//  RegisterViewController.h
//  kaohe2
//
//  Created by 郭红乐 on 2020/9/5.
//  Copyright © 2020 无. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

//1. 声明代理
@protocol RegisterDelegate <NSObject>

- (void) inputName:(NSString *)text pass:(NSString *) text1;

@end

@interface RegisterViewController : UIViewController
@property (nonatomic, strong) UITextField *mytextField;
@property (nonatomic, strong) UITextField *passtextField;
@property (nonatomic, strong) UITextField *pass2textField;
@property (nonatomic, strong) UIButton *btn;


//2.生成一个成员变量，便于访问设置
@property(nonatomic,assign)id <RegisterDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
