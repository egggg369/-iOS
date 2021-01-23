//
//  Person.h
//  isEqual 和 ==  （2）
//
//  Created by 郭红乐 on 2020/10/20.
//  Copyright © 2020 无. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *idStr;
@property (nonatomic, strong) NSDate *birthday;
//@property (readonly) NSUInteger hash;


//- (id) initWithName:(NSString *)name idStr: (NSString *) idStr;
//personWithName:kName1 birthday:self.date1
- (id) personWithName:(NSString *)name birthday: (NSDate *)birthday;
@end

NS_ASSUME_NONNULL_END
