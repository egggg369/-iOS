//
//  ViewController.h
//  shuxi
//
//  Created by 郭红乐 on 2020/9/5.
//  Copyright © 2020 无. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;

@end

