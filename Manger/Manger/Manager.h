//
//  Manager.h
//  Manger
//
//  Created by 郭红乐 on 2020/10/14.
//  Copyright © 2020 无. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TestModel.h"
//#import "StoriesJSONModel.h"

//typedef void(^Block)(Model * _Nonnull model);
//typedef void (^Block)(Test2Model * _Nonnull test2model);
//返回值类型(^块变量名)(形参类型)。 定义一个块变量类型
typedef void (^Block)(TestModel * _Nonnull testModel);
typedef void(^ErrorBlock)(NSError * _Nonnull error);



NS_ASSUME_NONNULL_BEGIN

@interface Manager : NSObject

+ (instancetype) sharedManger;

- (void) NetworkRequestSuccess:(Block) succeedBlock error:(ErrorBlock) errorBlock;

@end

NS_ASSUME_NONNULL_END
