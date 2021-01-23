//
//  ViewController.m
//  Manger
//
//  Created by 郭红乐 on 2020/10/14.
//  Copyright © 2020 无. All rights reserved.
//

#import "ViewController.h"
#import "Manager.h"
//#import "StoriesJSONModel.h"
#import "TestModel.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
//    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
//    _tableView.dataSource = self;
//    _tableView.delegate = self;
//    [self.view addSubview:_tableView];
    
//    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 150)];
    
    [[Manager sharedManger] NetworkRequestSuccess:^(TestModel * _Nonnull testModel) {
        self.myModel = [[TestModel alloc] init];
        self.myModel = testModel;
        NSLog(@"%@", _myModel.stories[0]);
        StoriesJSONModel *storiesModel = [[StoriesJSONModel alloc] init];
        storiesModel = self->_myModel.stories[0];

    } error:^(NSError * _Nonnull error) {
        NSLog(@"错误！");
    }];
}


@end
