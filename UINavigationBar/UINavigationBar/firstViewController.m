//
//  firstViewController.m
//  UINavigationBar
//
//  Created by 郭红乐 on 2020/7/15.
//  Copyright © 2020 无. All rights reserved.
//

#import "firstViewController.h"
#import "secondViewController.h"
@interface firstViewController ()

@end

@implementation firstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor blueColor];
    
    //self.title = @"第一页";
    
    [self createUI];
    
    self.navigationController.navigationBar.barStyle = UIBarMetricsDefault;
    //self.navigationController.navigationBar.barTintColor = [UIColor redColor];
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"123"] forBarMetrics:UIBarMetricsDefault];//公用的
    self.navigationController.navigationBar.tintColor = [UIColor redColor];
}


-(void) createUI
{
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 80, 40)];
    button.backgroundColor = [UIColor redColor];
    [button addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
}
/*
- (void)next {
    
}*/

- (void)click {
    secondViewController* s = [[secondViewController alloc]init];
    [self.navigationController pushViewController:s animated:YES];
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
