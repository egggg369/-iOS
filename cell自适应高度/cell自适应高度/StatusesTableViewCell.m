//
//  StatusesTableViewCell.m
//  cell自适应高度
//
//  Created by 郭红乐 on 2020/7/31.
//  Copyright © 2020 无. All rights reserved.
//

#import "StatusesTableViewCell.h"

@implementation StatusesTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if(self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
       
        UIImageView *iocView = [[UIImageView alloc] init];
        _iconView = iocView;
        [self.contentView addSubview:iocView];
        
        UILabel *nameView = [[UILabel alloc] init];
        _nameView = nameView;
        _nameView.font = [UIFont systemFontOfSize:14];
        [self.contentView addSubview:nameView];
        
        
        UIImageView *vipView = [[UIImageView alloc] init];
        _vipView = vipView;
        _vipView.image = [UIImage imageNamed:@"vip"];
        [self.contentView addSubview:vipView];
        
        UILabel *textView = [[UILabel alloc] init];
        _textView = textView;
        _textView.numberOfLines = 0;
        textView.font = [UIFont systemFontOfSize:17];
        [self.contentView addSubview:textView];
        
        UIImageView *pictureView = [[UIImageView alloc] init];
        _pictureView = pictureView;
        [self.contentView addSubview:pictureView];
        
        
    }
    return self;
}











- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
