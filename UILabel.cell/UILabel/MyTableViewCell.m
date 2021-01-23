//
//  MyTableViewCell.m
//  UILabel
//
//  Created by 王天亮 on 2020/7/16.
//  Copyright © 2020 无. All rights reserved.
//

#import "MyTableViewCell.h"

@implementation MyTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if ([self.reuseIdentifier isEqualToString:@"123"]) {
        _lable = [[UILabel alloc] init];
        [self.contentView addSubview:_lable];
        _lable.text = @"123";
        _tempImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"temp"]];
        [self.contentView addSubview:_tempImageView];
        
    } else {
        _lable = [[UILabel alloc] init];
        [self.contentView addSubview:_lable];
        _lable.text = @"1234";
        _tempImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"tempTwo"]];
        [self.contentView addSubview:_tempImageView];
    }
    return self;
}
- (void)layoutSubviews {
    _lable.frame = CGRectMake(25, 25, 500, 49);
    _tempImageView.frame = CGRectMake(0, 0, 50, 50);
}

@end
