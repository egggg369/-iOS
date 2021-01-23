//
//  TestModel.m
//  Manger
//
//  Created by 郭红乐 on 2020/10/14.
//  Copyright © 2020 无. All rights reserved.
//

#import "TestModel.h"

@implementation StoriesJSONModel

+(BOOL)propertyIsOptional:(NSString *)propertyName{
    return  YES;
}

@end

@implementation Top_storiesJSONModel

+(BOOL)propertyIsOptional:(NSString *)propertyName{
    return  YES;
}

@end


@implementation TestModel

+(BOOL)propertyIsOptional:(NSString *)propertyName{
    return  YES;
}


@end
