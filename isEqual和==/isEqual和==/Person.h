//
//  Person.h
//  isEqual和==
//
//  Created by 郭红乐 on 2020/10/20.
//  Copyright © 2020 无. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) NSDate *birthday;

- (BOOL)isEqual:(id)object;
- (BOOL)isEqualToPerson:(Person *)person;
- (NSUInteger)hash;
@end

NS_ASSUME_NONNULL_END
