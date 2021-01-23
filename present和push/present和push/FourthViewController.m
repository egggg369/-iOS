//
//  FourthViewController.m
//  present和push
//
//  Created by 郭红乐 on 2020/10/4.
//  Copyright © 2020 无. All rights reserved.
//

#import "FourthViewController.h"

@interface FourthViewController ()

@end

@implementation FourthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor orangeColor];
    
    _Btn = [UIButton buttonWithType:UIButtonTypeSystem];
    _Btn.frame = CGRectMake(100, 200, 200, 40);
    [_Btn setTintColor:[UIColor blackColor]];
    [_Btn setTitle:@"back2 dismiss" forState:UIControlStateNormal];
    [_Btn addTarget:self action:@selector(back2) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_Btn];
}

- (void) back2{
    NSLog(@"back2 ?->dissmiss second(因为上一级页面是第二个)");
    //dismiss返回，来的时候是persent
    [self dismissViewControllerAnimated:YES completion:nil];
    
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
