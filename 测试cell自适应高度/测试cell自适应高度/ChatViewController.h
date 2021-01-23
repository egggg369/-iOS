//
//  ChatViewController.h
//  测试cell自适应高度
//
//  Created by 郭红乐 on 2020/8/1.
//  Copyright © 2020 无. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ChatViewController : UIViewController
<
UITableViewDelegate,
UITableViewDataSource,
UITextFieldDelegate
>

@property UITextField *textField;
@property UITableView *tableView;
@property NSMutableArray *messageArr;
@property (nonatomic) NSNumber *rowHeight;
@property NSMutableArray *rowHeightArr;

@end

NS_ASSUME_NONNULL_END
