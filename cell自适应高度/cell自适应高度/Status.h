//
//  Status.h
//  cell自适应高度
//
//  Created by 郭红乐 on 2020/7/31.
//  Copyright © 2020 无. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Status : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *text;
@property (nonatomic, copy) NSString *icon;
@property (nonatomic,strong)NSNumber *vip;

- (instancetype) initWithDict: (NSDictionary *)dict;
+(id)statusesWithDict:(NSDictionary *)dict;

@end

NS_ASSUME_NONNULL_END
