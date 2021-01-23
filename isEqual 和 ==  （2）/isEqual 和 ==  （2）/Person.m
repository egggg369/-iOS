//
//  Person.m
//  isEqual 和 ==  （2）
//
//  Created by 郭红乐 on 2020/10/20.
//  Copyright © 2020 无. All rights reserved.
//

#import "Person.h"

@implementation Person

//区分成员变量名称和属性名称。使用@synthesize可以改变_name名称
@synthesize name = _name;
@synthesize idStr = _idStr;

//- (id) initWithName:(NSString *)name idStr: (NSString *) idStr
//{
//    if(self = [super init])
//    {
//        self.name = name;
//        self.idStr = idStr;
//    }
//    return self;
//}

- (id) personWithName:(NSString *)name birthday: (NSDate *)birthday
{
    if(self = [super init])
    {
        self.name = Kname;
        self.birthday = date;
        
    }
    return self;
}

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
- (NSUInteger)hash {
    NSUInteger hash =  [self.name hash] ^ [self.birthday hash];
    NSLog(@"hash = %ld", hash);
    return hash;
}

@end
