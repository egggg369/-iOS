//
//  Person.m
//  isEqual和==
//
//  Created by 郭红乐 on 2020/10/20.
//  Copyright © 2020 无. All rights reserved.
//

#import "Person.h"

@implementation Person


//重写isEqual方法
- (BOOL)isEqual:(id)object {
    if(self == object) {
        return YES;
    }
    
    if(![object isKindOfClass:[Person class]]) {
        return NO;
    }
    
    return [self isEqualToPerson:(Person *)object];
}

- (BOOL)isEqualToPerson:(Person *)person {
    if (!person) {
        return NO;
    }

    BOOL haveEqualNames = (!self.name && !person.name) || [self.name isEqualToString:person.name];
    BOOL haveEqualBirthdays = (!self.birthday && !person.birthday) || [self.birthday isEqualToDate:person.birthday];

    return haveEqualNames && haveEqualBirthdays;
}

//Person类的hash方法实现
//- (NSUInteger)hash {
//    return [self.name hash] ^ [self.birthday hash];
//
//    // NSObject的hash值是调用hash方法的对象地址，一般不用，需要重写一个hash的方法实现
//    //return [super hash];
//}

- (NSUInteger)hash {
    NSUInteger hash = [super hash];
    NSLog(@"hash = %ld", hash);
    return hash;
}



@end
