//
//  ViewController.h
//  Manger
//
//  Created by 郭红乐 on 2020/10/14.
//  Copyright © 2020 无. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TestModel.h"

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

//@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) TestModel *myModel;

@end

