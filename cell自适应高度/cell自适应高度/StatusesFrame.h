//
//  StatusesFrame.h
//  cell自适应高度
//
//  Created by 郭红乐 on 2020/7/31.
//  Copyright © 2020 无. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Status.h"
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface StatusesFrame : NSObject

@property(nonatomic,strong)Status *status;
@property(nonatomic,assign, readonly )CGRect iconF;
@property(nonatomic,assign, readonly )CGRect nameF;
@property(nonatomic,assign, readonly )CGRect textF;
@property(nonatomic,assign, readonly )CGRect pictureF;
@property(nonatomic,assign, readonly )CGRect vipF;

@end

NS_ASSUME_NONNULL_END
