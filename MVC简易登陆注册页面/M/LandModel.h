//
//  LandModel.h
//  MVC简易登陆注册页面
//
//  Created by 郭红乐 on 2020/8/16.
//  Copyright © 2020 无. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LandModel : NSObject

- (void)checkNames:(NSString *)username withPassword:(NSString *)password;

@end

NS_ASSUME_NONNULL_END
