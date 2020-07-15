//
//  firstViewController.m
//  UINavigationiterm
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
    self.title = @"第一页";
    [self createUI];
}

-(void) createUI
{
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 80, 40)];
    button.backgroundColor = [UIColor redColor];
    [button addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    //图标item
    //1
    UIBarButtonItem *word = [[UIBarButtonItem alloc]initWithTitle:@"haha" style:UIBarButtonItemStyleDone target:self action:@selector(down)];
    
    //2
    UIImage *ima = [[UIImage imageNamed:@"12"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

    UIButton *button0 = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 10, 10)];
    [button0 setImage:ima forState:UIControlStateNormal];
    UIBarButtonItem *image = [[UIBarButtonItem alloc] initWithCustomView:button];
    [self.navigationItem setLeftBarButtonItem:image];
    
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(up)];
    self.navigationItem.rightBarButtonItems = @[item];
    
    /*
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(200, 200, 40, 40)];
    label.backgroundColor = [UIColor yellowColor];
    
    label.text = @"hello!";
    label.textAlignment = NSTextAlignmentCenter;
    self.navigationItem.titleView = label;//titleView和title的位置默认是一样的
    //[self.view addSubview:label];*/
}

-(void) up {
    
}

-(void) down {
    
}

- (void)next {
    
}

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
