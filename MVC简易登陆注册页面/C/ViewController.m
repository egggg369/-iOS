//
//  ViewController.m
//  MVC简易登陆注册页面
//
//  Created by 郭红乐 on 2020/8/16.
//  Copyright © 2020 无. All rights reserved.
//

#import "ViewController.h"
#import "SuccessfullViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _landView = [[LandView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [_landView viewInit];
    
    _landView.delegate = self;
    [self.view addSubview:_landView];
    
    _mModel = [[LandModel alloc] init];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(landSuccessful:) name:@"landSuccessful" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(landFail:) name:@"landFail" object:nil];
}

- (void)clickButton:(UIButton *)sender {
    [_mModel checkNames:_landView.accountTextField.text withPassword:_landView.passwordTextField.text];
    
}

- (void)landSuccessful:(NSNotification *)notification {
    SuccessfullViewController *sviewController = [[SuccessfullViewController alloc] init];
    sviewController.view.backgroundColor = [UIColor yellowColor];
    [self presentViewController:sviewController animated:NO completion:nil];
    
}

- (void)landFail:(NSNotification *)notification {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"错误" message:@"帐号或密码输入错误" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"确认" style:UIAlertActionStyleDefault handler:nil];
    [alertController addAction:sureAction];
    [self presentViewController:alertController animated:YES completion:nil];
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter]removeObserver:self];
}

//回收键盘
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
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
