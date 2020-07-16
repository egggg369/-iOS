//
//  ViewController.m
//  UITabelView对象
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
    
    //创建数据视图
    //p1:数据视图的位置
    //p2:数据视图的风格
    //UITableViewStylePlain:普通风格
    //UITableViewStyleGrouped:分组风格
    _tablaView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    //设置数据视图的代理对象
    _tablaView.delegate = self;
    //设置数据视图的数据对象
    _tablaView.dataSource = self;
    
    [self.view addSubview:_tablaView];
}

//获取每组元素的个数
//必须要实现的协议函数
//程序在显示数据视图是回调用此函数
//返回值：表示每组元素的个数
//p1:数据视图本身
//p2:哪一组需要的行数
- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

//设置数据视图的组数
- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}

//创建单元格对象函数
- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString* cellStr = @"cell";
    
    UITableViewCell* cell = [_tablaView dequeueReusableCellWithIdentifier:cellStr];
    
    if(cell == nil) {
        //创建一个单元格
        //p1:单元格的样式
        //p2:单元格的复用标记
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellStr];
    }
    NSString* str = [NSString stringWithFormat:@"第%ld组，第%ld行！",indexPath.section, indexPath.row];
    //将单元格的主文字内容赋值
    cell.textLabel.text = str;
    
    return cell;
}

@end
