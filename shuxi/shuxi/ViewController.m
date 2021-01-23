//
//  ViewController.m
//  shuxi
//
//  Created by 郭红乐 on 2020/9/5.
//  Copyright © 2020 无. All rights reserved.
//

#import "ViewController.h"
#import "ViewCell.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 40, 375, 586) style:UITableViewStyleGrouped];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
    
    [self.tableView registerClass:[ViewCell class] forCellReuseIdentifier:@"cell1"];
        
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"cell1" forIndexPath:indexPath];
    
    if(indexPath.section == 0) {
        cell.label.text = @"1234";
        [cell.btn setImage:[UIImage imageNamed:@""] forState:<#(UIControlState)#>]
    }
}

@end
