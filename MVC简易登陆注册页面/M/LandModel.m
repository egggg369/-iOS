//
//  LandModel.m
//  MVC简易登陆注册页面
//
//  Created by 郭红乐 on 2020/8/16.
//  Copyright © 2020 无. All rights reserved.
//

#import "LandModel.h"

@implementation LandModel

- (void)checkNames: (NSString *)username withPassword:(NSString *)password {
    if([username isEqualToString:@"123"] && [password isEqualToString:@"789"]) {
        [[NSNotificationCenter defaultCenter] postNotificationName:@"landSuccessful" object:self];
    }else {
        [[NSNotificationCenter defaultCenter] postNotificationName:@"landFail" object:self];
    }
}

@end
