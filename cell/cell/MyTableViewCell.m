//
//  MyTableViewCell.m
//  cell
//
//  Created by 郭红乐 on 2020/7/21.
//  Copyright © 2020 无. All rights reserved.
//

#import "MyTableViewCell.h"

@implementation MyTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if([self.reuseIdentifier isEqualToString:@"123"])
    {
        _label = [[UILabel alloc] init];
        [self.contentView addSubview:_label];
        _label.text = @"测试1";
    }else {
        _label = [[UILabel alloc] init];
        [self.contentView addSubview:_label];
        _label.text = @"测试2";
    }
    return self;
}

- (void) layoutSubviews {
    _label.frame = CGRectMake(25, 25, 100, 50);
}


@end

//1.继承tableViewcell
//2.删除其他地方的东西
//3.写出这个方法和self
