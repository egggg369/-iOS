//
//  FirstViewController.m
//  kaohe2
//
//  Created by 郭红乐 on 2020/9/5.
//  Copyright © 2020 无. All rights reserved.
//

#import "FirstViewController.h"
#import "ThirdViewController.h"
@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    [self createUI];
}

- (void) createUI {
    UIImage *ima = [[UIImage imageNamed:@"跳转"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIBarButtonItem *image = [[UIBarButtonItem alloc]initWithImage:ima style:UIBarButtonItemStyleDone target:self action:@selector(next)];
    self.navigationItem.rightBarButtonItems = @[image];
}

- (void) next {
    ThirdViewController *s = [[ThirdViewController alloc] init];
    
//    - (void)click {
//        CountViewController* s = [[CountViewController alloc]init];
//        [self.navigationController pushViewController:s animated:YES];
//    }

    
    s.modalPresentationStyle = UIModalPresentationFullScreen;
//    [self presentViewController:s animated:YES completion:nil];
    [self.navigationController pushViewController:s animated:YES];
    //[self.navigationController pushViewController:vcRegister animated:YES];

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
