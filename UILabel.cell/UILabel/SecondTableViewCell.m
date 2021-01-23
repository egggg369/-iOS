//
//  SecondTableViewCell.m
//  UILabel
//
//  Created by 王天亮 on 2020/7/19.
//  Copyright © 2020 无. All rights reserved.
//

#import "SecondTableViewCell.h"

@implementation SecondTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if ([self.reuseIdentifier isEqualToString:@"second"]) {
        _lable = [[UILabel alloc] init];
        [self.contentView addSubview:_lable];
        _lable.text = @"1234";
        _tempImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"tempThree"]];
        [self.contentView addSubview:_tempImageView];

    }
    return self;
}
- (void)layoutSubviews {
    _lable.frame = CGRectMake(25, 25, 500, 49);
    _tempImageView.frame = CGRectMake(0, 0, 50, 50);
}


@end
