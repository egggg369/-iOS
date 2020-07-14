//
//  ViewController.h
//  UITextField
//
//  Created by 郭红乐 on 2020/7/14.
//  Copyright © 2020 无. All rights reserved.
//

#import <UIKit/UIKit.h>
// <>里是协议函数
@interface ViewController : UIViewController <UITextFieldDelegate>
{
    //定义一个textField
    //文本输入区域
    //例如，用户名密码等需要输入文本文字的内容区域
    //只能输入单行的文字，不能输入或显示多行
    UITextField* _textField;
}

//定义属性
@property(retain, nonatomic)UITextField* textField;

@end

