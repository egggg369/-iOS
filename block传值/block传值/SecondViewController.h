//
//  SecondViewController.h
//  block传值
//
//  Created by 郭红乐 on 2020/9/11.
//  Copyright © 2020 无. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SecondViewController : UIViewController <UITextFieldDelegate>
@property (nonatomic, strong) UITextField *textfield;
//1. 声明block
@property (nonatomic, copy) void (^myblock)(NSString *);
@end

NS_ASSUME_NONNULL_END
