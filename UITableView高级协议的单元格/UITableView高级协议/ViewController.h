//
//  ViewController.h
//  UITableView高级协议
//
//  Created by 郭红乐 on 2020/7/16.
//  Copyright © 2020 无. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<UITableViewDataSource,UITableViewDelegate>
{
    UITableView* _tableView;
    NSMutableArray* _arrayData;
    
    //添加导航按钮
    UIBarButtonItem* _btnEdit;
    UIBarButtonItem* _btnFinish;
    UIBarButtonItem* _btnDelete;
    
    //设置编辑状态
    BOOL _isEdit ;
    
}

@end

