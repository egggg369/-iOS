//
//  ViewController.m
//  UITableView协议
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
    
    //创建数据视图对象
    //位置，风格
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 40, 320, 536) style:UITableViewStyleGrouped];
    
    //设置代理对象
    _tableView.delegate = self;
    //设置数据代理对象
    _tableView.dataSource = self;
    //数据视图显示
    [self.view addSubview:_tableView];
    
    //创建一个可变数组
    _arrayData = [[NSMutableArray alloc]init];
    
    for (int i = 'A'; i <= 'Z'; i++) {
        //定义小数组
        NSMutableArray* arraySmall = [[NSMutableArray alloc]init];
        
        for (int j = 1; j <= 5; j++) {
            NSString* str = [NSString stringWithFormat:@"%c%d",i,j];
            
            [arraySmall addObject:str];
        }
        
        //生成一个二维数组
        [_arrayData addObject:arraySmall];
    }
    //NSLog(@"a = %d", _arrayData.count);
    [_tableView reloadData];
}

//获取数组
-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return _arrayData.count;
}
//获取每组的元素个数
-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSUInteger numRow = [[_arrayData objectAtIndex:section] count];
    return numRow;
}

-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString* str = @"cell";
    UITableViewCell* cell = [_tableView dequeueReusableCellWithIdentifier:str];
    
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:str];
    }
    cell.textLabel.text = _arrayData[indexPath.section][indexPath.row];
    
    return cell;
}

-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}

-(NSString*) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"头部标题";
}

-(NSString*) tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    return @"尾部标题";
}

-(CGFloat) tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 60;
}

@end
