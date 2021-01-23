//
//  LandViewController.h
//  kaohe2
//
//  Created by 郭红乐 on 2020/9/5.
//  Copyright © 2020 无. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RegisterViewController.h"
NS_ASSUME_NONNULL_BEGIN
//4
@interface LandViewController : UIViewController<RegisterDelegate>
@property (nonatomic, strong) UITextField *mytextField;
@property (nonatomic, strong) UITextField *passtextField;
@property (nonatomic, strong) UIButton *loginbutton;
@property (nonatomic, strong) UIButton *registerbutton;
@property NSString *userStr;
@property NSString *passStr;
@end

NS_ASSUME_NONNULL_END
