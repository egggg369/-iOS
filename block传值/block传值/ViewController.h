//
//  ViewController.h
//  block传值
//
//  Created by 郭红乐 on 2020/9/11.
//  Copyright © 2020 无. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>
@property(nonatomic,strong) UITextField *text;
@property(nonatomic,strong) UIButton *btn1;
@property(nonatomic,strong) UILabel *label;

@end

