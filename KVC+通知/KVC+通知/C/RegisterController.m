//
//  RegisterController.m
//  KVC+通知
//
//  Created by 郭红乐 on 2020/8/16.
//  Copyright © 2020 无. All rights reserved.
//

#import "RegisterController.h"

@interface RegisterController ()

@end

@implementation RegisterController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _registerView = [[RegisterView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:_registerView];
    [_registerView viewInit];
    [_registerView.confirmButton addTarget:self action:@selector(pressBack) forControlEvents:UIControlEventTouchUpInside];
}

- (void)pressBack {
    //1.（通知例子中无序号） 创建通知
    NSNotification *noti = [NSNotification notificationWithName:@"send" object:self userInfo:@{@"name":_registerView.nameTextField.text, @"pass":_registerView.passTextField.text}];
    
    //2. 通知中心去发布通知
    [[NSNotificationCenter defaultCenter] postNotification:noti];
    
    [self dismissViewControllerAnimated:YES  completion:nil];
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
