//
//  StatusesTableViewCell.h
//  cell自适应高度
//
//  Created by 郭红乐 on 2020/7/31.
//  Copyright © 2020 无. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface StatusesTableViewCell : UITableViewCell

@property(nonatomic,weak)UIImageView *iconView;
@property(nonatomic,weak)UILabel *nameView;
@property(nonatomic,weak)UILabel *textView;
@property(nonatomic,weak)UIImageView *pictureView;
@property(nonatomic,weak)UIImageView *vipView;


@end

NS_ASSUME_NONNULL_END
