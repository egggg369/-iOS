//
//  ViewController.m
//  present和push
//
//  Created by 郭红乐 on 2020/9/26.
//  Copyright © 2020 无. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    _pressBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    [self.view addSubview:_pressBtn];
    _pressBtn.frame = CGRectMake(150, 200, 100, 60);
    [_pressBtn setTitle:@"开" forState:UIControlStateNormal];
    [_pressBtn setTintColor:[UIColor blackColor]];
    [_pressBtn addTarget:self action:@selector(press) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void) press {
    NSLog(@"press 01 to ");
    //出来一个navigation
    SecondViewController *secondVC = [[SecondViewController alloc] init];
    UINavigationController *navSecondVC = [[UINavigationController alloc] initWithRootViewController:secondVC];
    navSecondVC.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:navSecondVC animated:YES completion:nil];
    
    //跳转下一个页面
//    secondVC.modalPresentationStyle = UIModalPresentationOverFullScreen;
//    [self presentViewController:secondVC animated:YES completion:nil];
}

@end
