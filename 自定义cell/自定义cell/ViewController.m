//
//  ViewController.m
//  自定义cell
//
//  Created by 郭红乐 on 2020/7/20.
//  Copyright © 2020 无. All rights reserved.
//

#import "ViewController.h"
#import "MyTableViewCell.h"
#import "SecondTableViewCell.h"
@interface ViewController () <UITableViewDelegate,UITableViewDataSource>

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.mainTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStyleGrouped];
    [self.view addSubview:self.mainTableView];
    self.mainTableView.dataSource = self;
    self.mainTableView.delegate = self;
    
    
    [self.mainTableView registerClass:[MyTableViewCell class] forCellReuseIdentifier:@"123"];
    [self.mainTableView registerClass:[MyTableViewCell class] forCellReuseIdentifier:@"1234"];
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.section % 2 == 0) {
        MyTableViewCell *cell = [self.mainTableView dequeueReusableCellWithIdentifier:@"123" forIndexPath:indexPath];
        cell.lable.text = @"第一行";
        return cell;
    }else {
        MyTableViewCell *cell = [self.mainTableView dequeueReusableCellWithIdentifier:@"1234" forIndexPath:indexPath];
        cell.lable.text = @"双数行";
        return cell;
    }
}

@end
