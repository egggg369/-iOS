//
//  ThirdTableViewCell.m
//  kaohe2
//
//  Created by 郭红乐 on 2020/9/6.
//  Copyright © 2020 无. All rights reserved.
//

#import "ThirdTableViewCell.h"

@implementation ThirdTableViewCell



- (void)layoutSubviews{
    _label.frame = CGRectMake(10, 10, 150, 50);
    _zilabel.frame = CGRectMake(240, 150, 70, 50);
    _zeroimageView.frame = CGRectMake(10, 10, 350, 150);
    _oneimageView.frame = CGRectMake(10, 70, 120, 120);
    _twoimageView.frame = CGRectMake(150, 70, 120, 120);
    _thirdimageView.frame = CGRectMake(10, 70, 190, 250);
    _touimageView.frame = CGRectMake(280, 120, 70, 70);
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if ([self.reuseIdentifier isEqualToString:@"0"]) {
        //UITableViewCell *cell = deque
        _zeroimageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"图片"]];
        [self.contentView addSubview:_zeroimageView];
        _zilabel = [[UILabel alloc] init];
        [self addSubview:_zilabel];
        _touimageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"图片4"]];
        [self.contentView addSubview:_touimageView];
        
    }else if([self.reuseIdentifier isEqualToString:@"1"]){
        _label = [[UILabel alloc] init];
        [self addSubview:_label];
        _oneimageView =[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"图片2"]];
        [self.contentView addSubview:_oneimageView];
        _twoimageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"图片3"]];
        [self.contentView addSubview:_twoimageView];
        
    }else if([self.reuseIdentifier isEqualToString:@"2"]) {
        _label = [[UILabel alloc] init];
        [self addSubview:_label];
        _thirdimageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"图片1"]];
        [self.contentView addSubview:_thirdimageView];
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
