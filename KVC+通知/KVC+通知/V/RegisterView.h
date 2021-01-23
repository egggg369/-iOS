//
//  RegisterView.h
//  KVC+通知
//
//  Created by 郭红乐 on 2020/8/16.
//  Copyright © 2020 无. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RegisterView : UIView

@property (nonatomic, strong) UIButton *confirmButton;
@property (nonatomic, strong) UITextField *nameTextField;
@property (nonatomic, strong) UITextField *passTextField;

- (void)viewInit;

@end

NS_ASSUME_NONNULL_END
