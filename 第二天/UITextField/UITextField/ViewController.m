//
//  ViewController.m
//  UITextField
//
//  Created by 郭红乐 on 2020/7/14.
//  Copyright © 2020 无. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
//textField 属性         成员变量
//textField可以使用属性(是自己的属性，用self就好），也可以使用成员变量
@synthesize textField = _textField;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor colorWithRed:0.21 green:0.57 blue:0.80 alpha:1.00];
 
    
    //创建一个文本输入区对象
    self.textField = [[UITextField alloc]init];
    
    //设定文本输入区的位置
    self.textField.frame = CGRectMake(100, 100, 100, 40);
    self.
    
    //设置textField的内容文字
    self.textField.text = @"用户名";
    
    //设置文字的字体大小
    self.textField.font = [UIFont systemFontOfSize:15];
    
    //设置字体的颜色
    self.textField.textColor = [UIColor blackColor];
    
    //设置边框的风格
    //UITextBorderStyleLine 线框风格
    //UITextBorderStyleRoundedRect 圆角风格（默认）
    //UITextBorderStyleNone 无边框风格
    //UITextBorderStyleBezel bezel线框
    
    self.textField.borderStyle = UITextBorderStyleRoundedRect;
    
    //设置虚拟键盘风格
    //UIKeyboardTypeDefault：默认风格
    //字母和数字组合风格UIKeyboardTypeNamePhonePad
    //纯数字风格UIKeyboardTypeNumberPad
    //
    self.textField.keyboardType = UIKeyboardTypeDefault;
    
    //提示文字信息
    //当text属性为空，显示此条信息
    //浅灰色
    self.textField.placeholder = @"请输入用户名...";
    
    //是否作为密码输入
    //YES作为密码输入，圆点加密
    //NO普通显示输入
    self.textField.secureTextEntry = YES;
    
    [self.view addSubview:self.textField];
    
    //设置代理对象
    self.textField.delegate = self;
}

//点击屏幕空白处时收回
- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    //使虚拟键盘回收，不再作为第一消息响应者
    [self.textField resignFirstResponder];
}

//几个协议函数

- (void) textFieldDidBeginEditing:(UITextField *)textField {
    NSLog(@"开始编辑了！");
}

- (void) textFieldDidEndEditing:(UITextField *)textField {
    //self.textField.text = @"";
    NSLog(@"编辑输入结束！");
}

//是否可以进行输入
//如果返回值为YES，可以进行输入，默认为YES
//NO：不能输入文字
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    return YES;
}

//是否可以结束输入
//如果返回值为yes：可以结束输入，默认为YES
//NO：不能结束输入文字
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField {
    return YES;
}
@end
