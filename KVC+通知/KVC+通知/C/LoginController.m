//
//  LoginController.m
//  KVC+通知
//
//  Created by 郭红乐 on 2020/8/16.
//  Copyright © 2020 无. All rights reserved.
//

#import "LoginController.h"
#import "RegisterController.h"
#import "LoginView.h"
@interface LoginController ()

@end

@implementation LoginController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _loginView = [[LoginView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:_loginView];
    [_loginView viewInit];
    [_loginView.registerButton addTarget:self action:@selector(pressRegister) forControlEvents:UIControlEventTouchUpInside];
}

- (void)pressRegister {
    RegisterController *registerController = [[RegisterController alloc] init];
    registerController.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:registerController animated:YES completion:nil];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    //3. 注册通知（通知例子中序号为1）
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(recive:) name:@"send" object:nil];
}

- (void)recive:(NSNotification *)noti {
    NSDictionary *dic = noti.userInfo;
    _loginView.nameTextfield.text = dic[@"name"];
    _loginView.passTextfield.text = dic[@"pass"];
}

- (void) dealloc {
    [[NSNotificationCenter defaultCenter]removeObserver:self];
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
