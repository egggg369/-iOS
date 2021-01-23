//
//  ViewController.m
//  cell自适应高度
//
//  Created by 郭红乐 on 2020/7/31.
//  Copyright © 2020 无. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UITableView *_tableView;
}

@property (nonatomic,strong)NSArray *dataArray;
@end



@implementation ViewController

- (NSArray *)dataArray
{
    if(_dataArray == nil) {
        _dataArray = [[NSArray alloc] init];
        
        
        
    }
    return _dataArray;
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [self.view addSubview:_tableView];
    
    
}


@end
