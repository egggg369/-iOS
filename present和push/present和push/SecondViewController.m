//
//  SecondViewController.m
//  present和push
//
//  Created by 郭红乐 on 2020/10/1.
//  Copyright © 2020 无. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourthViewController.h"
@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    //视图二是一个导航栏，导航栏的名字是title
    self.navigationItem.title = @"页面2nav";
    
    _passBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    [self.view addSubview:_passBtn];
    [_passBtn setTintColor:[UIColor blackColor]];
    [_passBtn setTitle:@"开2nav push third" forState:UIControlStateNormal];
    _passBtn.frame = CGRectMake(150, 300, 200, 40);
    [_passBtn addTarget:self action:@selector(pass) forControlEvents:UIControlEventTouchUpInside];
    // Do any additional setup after loading the view.
    
    _passBtn2 = [UIButton buttonWithType:UIButtonTypeSystem];
    [self.view addSubview:_passBtn2];
    _passBtn2.frame = CGRectMake(150, 400, 200, 40);
    [_passBtn2 setTintColor:[UIColor blackColor]];
    [_passBtn2 setTitle:@"开3 present four" forState:UIControlStateNormal];
    [_passBtn2 addTarget:self  action:@selector(pass3) forControlEvents:UIControlEventTouchUpInside];
}

- (void) pass {
    NSLog(@"pass to third");
    //第三个同样是导航栏，而且两个导航栏之间可以自由返回
    ThirdViewController *thirdVC = [[ThirdViewController alloc] init];
    [self.navigationController pushViewController:thirdVC animated:YES];
}

- (void) pass3 {
    NSLog(@"pass to four");
    //也可以跳转到下一个页面four
    FourthViewController *fourVC = [[FourthViewController alloc] init];
    fourVC.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:fourVC animated:YES completion:nil];
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
