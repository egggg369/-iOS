//
//  ViewController.m
//  cell
//
//  Created by 郭红乐 on 2020/7/21.
//  Copyright © 2020 无. All rights reserved.
//


//引用文件，引用协议
#import "ViewController.h"
#import "MyTableViewCell.h"
@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    //创建tableView
    self.mainTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStyleGrouped];
    [self.view addSubview:self.mainTableView];
    
    //协议
    self.mainTableView.dataSource = self;
    self.mainTableView.delegate = self;
    
    //注册
    [self.mainTableView registerClass:[MyTableViewCell class] forCellReuseIdentifier:@"123"];
    [self.mainTableView registerClass:[MyTableViewCell class] forCellReuseIdentifier:@"1234"];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.section == 0) {
        UITableViewCell *cell = [self.mainTableView dequeueReusableCellWithIdentifier:@"123" forIndexPath:indexPath];
        return cell;
    }else {
        UITableViewCell *cell = [self.mainTableView dequeueReusableCellWithIdentifier:@"1234" forIndexPath:indexPath];
        return cell;
    }
}


@end
