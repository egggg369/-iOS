//
//  LandViewController.m
//  kaohe2
//
//  Created by 郭红乐 on 2020/9/5.
//  Copyright © 2020 无. All rights reserved.
//

#import "LandViewController.h"
#import "RegisterViewController.h"
#import "FirstViewController.h"
#import "OtherViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourthViewController.h"
#import "FifthViewController.h"
@interface LandViewController ()


@end

@implementation LandViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _mytextField = [[UITextField alloc] init];
    _mytextField.frame = CGRectMake(65, 200, 300, 50);
    _mytextField.borderStyle = UITextBorderStyleLine;
    _mytextField.font = [UIFont systemFontOfSize:15];
    _mytextField.placeholder = @"请输入用户名...";
    _mytextField.secureTextEntry = NO;
    [self.view addSubview: _mytextField];
    
    _passtextField = [[UITextField alloc] init];
    _passtextField.frame = CGRectMake(65, 260, 300, 50);
    _passtextField.borderStyle = UITextBorderStyleLine;
    _passtextField.font = [UIFont systemFontOfSize:15];
    _passtextField.placeholder = @"请输入密码...";
    _passtextField.secureTextEntry = NO;
    [self.view addSubview:_passtextField];
    
    
    
    
    _loginbutton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _loginbutton.frame = CGRectMake(100, 320, 100, 40);
    [_loginbutton setTitle:@"登陆" forState:UIControlStateNormal];
    _loginbutton.titleLabel.font = [UIFont systemFontOfSize:20];
    [_loginbutton addTarget:self action:@selector(login:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_loginbutton];
    
    _registerbutton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _registerbutton.frame = CGRectMake(220, 320, 100, 40);
    [_registerbutton setTitle:@"注册" forState:UIControlStateNormal];
    _registerbutton.titleLabel.font = [UIFont systemFontOfSize:20];
    [_registerbutton addTarget:self action:@selector(registered:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_registerbutton];
    
    
    _userStr = [[NSString alloc] init];
    _passStr = [[NSString alloc] init];
    
    //键盘消失手势
       UITapGestureRecognizer *tap1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewTapped:)];
       tap1.cancelsTouchesInView = NO;
       [self.view addGestureRecognizer:tap1];
       
       
       //键盘上移
       [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillAppear:) name:UIKeyboardWillShowNotification object:nil];
       
       [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillDisAppear:) name:UIKeyboardWillHideNotification object:nil];
}

- (void) registered: (UIButton *)button{
    RegisterViewController *vcRegister = [[RegisterViewController alloc] init];
    
    //5. 设定代理
    vcRegister.delegate = self;

    
    vcRegister.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:vcRegister animated:YES completion:nil];
    //[self.navigationController pushViewController:vcRegister animated:YES];
}

//6. 实现代理方法
//- (void) input:(NSString *)text
//{
//    _mytextField.text = text;
//    _passtextField.text = text;
//}
- (void) inputName:(NSString *)text pass:(NSString *) text1{
    _mytextField.text = text;
    _passtextField.text = text1;
    _userStr = text;
    _passStr = text1;
}

- (void)login:(UIButton *)button
{
    
    NSString *name = @"iOSnb123";
    NSString *pass = @"123456789";
    
//    NSString *strName = _mytextField.text;
//    NSString *strPass = _passtextField.text;
    
    if(_mytextField.text.length <= 0 || _passtextField.text.length <= 0) {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"输入不能为空" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *sureaction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:nil];
        [alert addAction:sureaction];
        [self presentViewController:alert animated:NO completion:nil];
        return;
    }else if
        (([_mytextField.text isEqualToString:_userStr] && [_passtextField.text isEqualToString:_passStr])
         || ([_mytextField.text isEqualToString:name] && [_passtextField.text isEqualToString:pass] )) {
        //|| (_mytextField.text.length > 0 && _passtextField.text.length > 0) ) {
            UIWindow *window = self.view.window;

            [window makeKeyAndVisible];

        //创建控制器一
        FirstViewController* vcFirst = [[FirstViewController alloc] init];
        UINavigationController* firstnav = [[UINavigationController alloc] initWithRootViewController:vcFirst];

        //蓝色背景
        vcFirst.view.backgroundColor = [UIColor whiteColor];

        //创建视图控制器二
        SecondViewController* vcSecond = [[SecondViewController alloc] init];
        //黄色背景
        vcSecond.view.backgroundColor = [UIColor whiteColor];
        //创建控制器三
//        ThirdViewController* vcThird = [[ThirdViewController alloc] init];
//        UINavigationController* thirdnav = [[UINavigationController alloc] initWithRootViewController:vcThird];
//
//        //橙色背景
//        vcThird.view.backgroundColor = [UIColor whiteColor];
        OtherViewController* vcThird = [[OtherViewController alloc] init];
                UINavigationController* thirdnav = [[UINavigationController alloc] initWithRootViewController:vcThird];

                //橙色背景
                vcThird.view.backgroundColor = [UIColor whiteColor];

        //创建视图控制器二
        FourthViewController* vcFour = [[FourthViewController alloc] init];
        //黄色背景
        vcFour.view.backgroundColor = [UIColor whiteColor];

        //创建视图控制器二
        FifthViewController* vcFifth = [[FifthViewController alloc] init];
        //黄色背景
        vcFifth.view.backgroundColor = [UIColor whiteColor];


        vcFirst.title = @"1";
        firstnav.title = @"首页";
        vcSecond.title = @"2";
        //vcThird.title = @"朋友圈";
        thirdnav.title = @"3";
        vcFour.title = @"4";
        vcFifth.title = @"5";


        //创建分栏控制器对象
        UITabBarController* tbController = [[UITabBarController alloc] init];

        //创建一个控制器数组对象
        //将所有要被分栏控制器管理的对象添加到数组中
        //NSArray* arrayVC = [NSArray arrayWithObjects:vcFirst,vcSecond, vcThird, nil];
        NSArray* arrayVC = [NSArray arrayWithObjects:firstnav,vcSecond, thirdnav, vcFour, vcFifth, nil];
        //将分栏视图控制器管理数组赋值
        tbController.viewControllers = arrayVC;

        //将分栏控制器作为根视图控制器
        window.rootViewController = tbController;

        //设置选中的视图控制器的索引
        //通过索引来确定显示哪一个控制器
        tbController.selectedIndex = 0;

        //当前显示的控制器对象
        if(tbController.selectedViewController == vcThird) {
            NSLog(@"当前显示的是控制器1");
        }

        //设置分栏控制器的工具栏的透明度
        tbController.tabBar.translucent = NO;


    }else {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"警告" message:@"账号与密码不匹配!" preferredStyle:UIAlertControllerStyleAlert];
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
