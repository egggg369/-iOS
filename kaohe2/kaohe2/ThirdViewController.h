//
//  ThirdViewController.h
//  kaohe2
//
//  Created by 郭红乐 on 2020/9/5.
//  Copyright © 2020 无. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ThirdViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong) UITableView *mytableView;
@end

NS_ASSUME_NONNULL_END
