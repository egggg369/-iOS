//
//  Status.m
//  cell自适应高度
//
//  Created by 郭红乐 on 2020/7/31.
//  Copyright © 2020 无. All rights reserved.
//

#import "Status.h"

@implementation Status
- (instancetype) initWithDict:(NSDictionary *)dict
{
    if(self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

+(id)statusesWithDict:(NSDictionary *)dict
{
    return [[self alloc] initWithDict:dict];
}

@end
