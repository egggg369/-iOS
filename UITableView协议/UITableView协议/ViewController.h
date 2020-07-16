//
//  ViewController.h
//  UITableView协议
//
//  Created by 郭红乐 on 2020/7/16.
//  Copyright © 2020 无. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<
//数据代理协议
UITableViewDataSource,
//普通代理协议
UITableViewDelegate
>

{
    //定义数据视图对象
    UITableView* _tableView;
    
    //设置一个数据源数组
    NSMutableArray* _arrayData;
}

@end

