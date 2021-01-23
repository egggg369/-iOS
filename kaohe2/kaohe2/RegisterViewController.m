//
//  RegisterViewController.m
//  kaohe2
//
//  Created by 郭红乐 on 2020/9/5.
//  Copyright © 2020 无. All rights reserved.
//

#import "RegisterViewController.h"
#import "FirstViewController.h"
@interface RegisterViewController ()

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    _mytextField = [[UITextField alloc] init];
    _mytextField.frame = CGRectMake(65, 200, 300, 50);
    _mytextField.font = [UIFont systemFontOfSize:15];
    _mytextField.borderStyle = UITextBorderStyleLine;
    _mytextField.placeholder = @"请输入用户名...";
    _mytextField.secureTextEntry = NO;
    [self.view addSubview: _mytextField];
    
    _passtextField = [[UITextField alloc] init];
    _passtextField.frame = CGRectMake(65, 260, 300, 50);
    _passtextField.font = [UIFont systemFontOfSize:15];
    _passtextField.borderStyle = UITextBorderStyleLine;
    _passtextField.placeholder = @"请输入密码...";
    _passtextField.secureTextEntry = YES;
    [self.view addSubview:_passtextField];
    
    _pass2textField = [[UITextField alloc] init];
    _pass2textField.frame = CGRectMake(65, 320, 300, 50);
    _pass2textField.font = [UIFont systemFontOfSize:15];
    _pass2textField.borderStyle = UITextBorderStyleLine;
    _pass2textField.placeholder = @"请再次输入密码...";
    _pass2textField.secureTextEntry = YES;
    [self.view addSubview:_pass2textField];
    
    _btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btn.frame = CGRectMake(100, 390, 100, 40);
    [_btn setTitle:@"继续登陆" forState:UIControlStateNormal];
    _btn.titleLabel.font = [UIFont systemFontOfSize:20];
    [_btn addTarget:self action:@selector(login2:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_btn];
    
    //键盘消失手势
    UITapGestureRecognizer *tap1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewTapped:)];
    tap1.cancelsTouchesInView = NO;
    [self.view addGestureRecognizer:tap1];
    
    
    //键盘上移
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillAppear:) name:UIKeyboardWillShowNotification object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillDisAppear:) name:UIKeyboardWillHideNotification object:nil];
}

- (void)login2:(UIButton*)button
{
    
    
    if([_passtextField.text isEqualToString: _pass2textField.text])
    {
        
        //3. 让代理去执行自己的方法，取得要传的值
        //[self.delegate input: _passtextField.text];
        [self.delegate inputName:_mytextField.text pass:_passtextField.text];
        
        [self dismissViewControllerAnimated:YES completion:nil];
        
    }else {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"警告" message:@"两次密码不一致!" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:nil];
        [alert addAction:sureAction];
        [self presentViewController:alert animated:NO completion:nil];
        
    }
    
    
    
}


//键盘上移的两个函数
- (void)keyboardWillDisAppear:(NSNotification *)notification{
    [UIView animateWithDuration:1 animations:^{self.view.transform = CGAffineTransformMakeTranslation(0, 0);}];
}

- (void)keyboardWillAppear:(NSNotification *)notification{
    CGRect keyboardFrame = [notification.userInfo[UIKeyboardFrameEndUserInfoKey] CGRectValue];
    CGFloat keyboardY = keyboardFrame.origin.y;
    [UIView animateWithDuration:1.0 animations:^{self.view.transform = CGAffineTransformMakeTranslation(0, keyboardY  + 90 - self.view.frame.size.height);}];
}

//点击空白处键盘消失
-(void)viewTapped:(UITapGestureRecognizer*)tap1
{

    [self.view endEditing:YES];

}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
