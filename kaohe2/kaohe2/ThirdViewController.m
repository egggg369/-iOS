//
//  ThirdViewController.m
//  kaohe2
//
//  Created by 郭红乐 on 2020/9/5.
//  Copyright © 2020 无. All rights reserved.
//

#import "ThirdViewController.h"
#import "ThirdTableViewCell.h"
@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _mytableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height - 50) style:UITableViewStyleGrouped];
    _mytableView.delegate = self;
    _mytableView.dataSource = self;
    [self.view addSubview:_mytableView];
    
    [_mytableView registerClass:[ThirdTableViewCell class] forCellReuseIdentifier:@"1"];
    [_mytableView registerClass:[ThirdTableViewCell class] forCellReuseIdentifier:@"2"];
    [_mytableView registerClass:[ThirdTableViewCell class] forCellReuseIdentifier:@"0"];
    
    [self creatUI];
}

- (void) creatUI {
    UIImage *ima = [[UIImage imageNamed:@"返回"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIBarButtonItem *image = [[UIBarButtonItem alloc]initWithImage:ima style:UIBarButtonItemStyleDone target:self action:@selector(next)];
    self.navigationItem.leftBarButtonItems = @[image];

}

- (void) next {
    //[self.navigationController dismissViewControllerAnimated:YES completion:nil];
    [self.navigationController popViewControllerAnimated:YES];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
//    if(indexPath.row == 0) {
//        return 1;
//    }
//    return 6;
    NSArray *array = [NSArray arrayWithObjects:@"1",@"6", nil];
    return [array[section] integerValue];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.section == 0){
        return 200;
    }else if(indexPath.section == 1 && indexPath.row % 2 != 0) {
        return 350;
    }
    return 240;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.section == 0 && indexPath.row == 0) {
        ThirdTableViewCell *cell= [_mytableView dequeueReusableCellWithIdentifier:@"0" forIndexPath:indexPath];
        cell.zilabel.text = @"阡陌";
        return cell;
    }
    else if//(indexPath.section % 2 == 0 && indexPath.row == 1)
        (indexPath.section == 1 && indexPath.row % 2 == 0)
    {
        ThirdTableViewCell *cell = [_mytableView dequeueReusableCellWithIdentifier:@"1" forIndexPath:indexPath];
        cell.label.text = @"日出东方";
        return cell;
    }else {
        ThirdTableViewCell *cell = [_mytableView dequeueReusableCellWithIdentifier:@"2" forIndexPath:indexPath];
        cell.label.text = @"独上高楼";
        return cell;
    }
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 0;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0;
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
