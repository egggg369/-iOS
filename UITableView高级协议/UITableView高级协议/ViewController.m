//
//  ViewController.m
//  UITableView高级协议
//
//  Created by 郭红乐 on 2020/7/16.
//  Copyright © 2020 无. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    
    //自动调整子视图的大小
    _tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth;
    
    //设置代理
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    //数据视图的头部视图的设定
    _tableView.tableHeaderView = nil;
    //数据视图的尾部视图
    _tableView.tableFooterView = nil;
    
    [self.view addSubview:_tableView];
    
    
    _arrayData = [[NSMutableArray alloc] init];
    
    for(int i = 1; i < 20; i++) {
        NSString* str = [NSString stringWithFormat:@"A %d", i];
        
        [_arrayData addObject:str];
    }
    
    //当数据视图的数据源发生变化时
    //来更新数据视图，重新加载数据
    [_tableView reloadData];
    
    [self createBtn];
}

- (void)createBtn
{
    _isEdit = NO;
    _btnEdit = [[UIBarButtonItem alloc] initWithTitle:@"编辑" style:UIBarButtonItemStylePlain target:self action:@selector(pressEdit)];
    _btnFinish = [[UIBarButtonItem alloc] initWithTitle:@"完成" style:UIBarButtonItemStylePlain target:self action:@selector(pressFinish)];
    _btnDelete = [[UIBarButtonItem alloc]initWithTitle:@"删除" style:UIBarButtonItemStylePlain target:self action:@selector(pressDelete)];
    
    self.navigationItem.rightBarButtonItem = _btnEdit;
}

- (void)pressEdit
{
    _isEdit = YES;
    self.navigationItem.rightBarButtonItem = _btnFinish;
    [_tableView setEditing:YES];
    self.navigationItem.leftBarButtonItem = _btnDelete;
}

-(void)pressFinish
{
    _isEdit = NO;
    self.navigationItem.rightBarButtonItem = _btnEdit;
    [_tableView setEditing:NO];
    self.navigationItem.leftBarButtonItem = nil;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _arrayData.count;
}
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString* strID = @"ID";
    
    //尝试获取可以复用的单元格
    //如果得不到，返回为nil
    UITableViewCell* cell = [_tableView dequeueReusableCellWithIdentifier:strID];

    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:strID];
    }
    
    //单元格文字赋值
    cell.textLabel.text = [_arrayData objectAtIndex:indexPath.row];
    
    return cell;
}

@end
