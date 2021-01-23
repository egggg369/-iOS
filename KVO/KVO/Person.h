//
//  Person.h
//  KVO
//
//  Created by 郭红乐 on 2020/8/15.
//  Copyright © 2020 无. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
//@property (nonatomic, strong) NSString *strNameWord;
//@property (nonatomic, strong) NSString *strPassWord;

@property (nonatomic, strong) NSString *name;
@property (nonatomic,assign) int age;

@end

NS_ASSUME_NONNULL_END
