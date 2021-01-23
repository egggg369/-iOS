//
//  StatusesFrame.m
//  cell自适应高度
//
//  Created by 郭红乐 on 2020/7/31.
//  Copyright © 2020 无. All rights reserved.
//

#import "StatusesFrame.h"

@implementation StatusesFrame

- (void)setStatus:(Status *)status
{
    _status = status;
    
    [self settingFrame];
    
}

- (CGSize) sizeWithText:(NSString *)text font:(UIFont *)font maxSize:(CGSize)maxSize
{
    NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys:font,NSFontAttributeName, nil];
    //根据文本的高度宽度字体内容，去计算文本的高度的函数
    return [text boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:dict context:nil].size;
}



- (void)settingFrame
{
    CGFloat padding = 10;
    CGFloat iconX = padding;
    CGFloat iconY = padding;
    CGFloat iconW = 35;
    CGFloat iconH = 35;
    _iconF = CGRectMake(iconX, iconY, iconW, iconH);
    
    
    CGFloat nameX = CGRectGetMaxX(_iconF) +padding;
    CGFloat nameY = padding;
    //保证文字的完整醒
    CGSize nameSize = [self sizeWithText:_status.name font:[UIFont systemFontOfSize:14] maxSize:CGSizeMake(MAXFLOAT, MAXFLOAT)];
    CGFloat nameH = nameSize.width;
    CGFloat nameW = nameSize.height;
    
    _nameF = CGRectMake(nameX, nameY, nameW, nameH);
}




@end
