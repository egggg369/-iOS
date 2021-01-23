//
//  ThirdViewController.m
//  present和push
//
//  Created by 郭红乐 on 2020/10/3.
//  Copyright © 2020 无. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor grayColor];
    
    _Btnback = [UIButton buttonWithType:UIButtonTypeSystem];
    [self.view addSubview:_Btnback];
    [_Btnback setTitle:@"backpop" forState:UIControlStateNormal];
    [_Btnback setTintColor:[UIColor blackColor]];
    _Btnback.frame = CGRectMake(100, 200, 100, 40);         
    [_Btnback addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    
    _Btnback2 = [UIButton buttonWithType:UIButtonTypeSystem];
    [self.view addSubview:_Btnback2];
    [_Btnback2 setTitle:@"backdiss" forState:UIControlStateNormal];
    [_Btnback2 setTintColor:[UIColor blackColor]];
    _Btnback2.frame = CGRectMake(100, 400, 100, 40);
    [_Btnback2 addTarget:self action:@selector(backDiss) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void) backDiss {
    NSLog(@"backdiss to First（dissmiss因为上一级页面是第一个，两个导航栏是同一级页面）");
    //dissmiss返回上一级
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void) back {
    NSLog(@"backPop to Second");
    
    //返回上一视图
    //[self.navigationController popViewControllerAnimated:YES];

    //返回根视图（to root）
    [self.navigationController popToRootViewControllerAnimated:YES];

    //返回任意视图(atindex后加返回的层数)
    //[self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];

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
