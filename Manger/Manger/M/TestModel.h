//
//  TestModel.h
//  Manger
//
//  Created by 郭红乐 on 2020/10/14.
//  Copyright © 2020 无. All rights reserved.
//

#import "JSONModel.h"

@protocol Top_storiesJSONModel

@end

@protocol StoriesJSONModel

@end

NS_ASSUME_NONNULL_BEGIN

@interface StoriesJSONModel : JSONModel
@property (nonatomic, copy) NSString *image_hue;
@property (nonatomic, copy) NSString *hint;
@property (nonatomic, copy) NSString *url;
@property (nonatomic, copy) NSString *images;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *ga_prefix;
@end

@interface Top_storiesJSONModel : JSONModel

@property (nonatomic, copy) NSString *image_hue;
@property (nonatomic, copy) NSString *hint;
@property (nonatomic, copy) NSString *url;
@property (nonatomic, copy) NSString *image;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *ga_prefix;

@end

@interface TestModel : JSONModel

@property (nonatomic, copy) NSString *date;
@property (nonatomic, copy) NSArray<Top_storiesJSONModel>*top_stories;
@property (nonatomic, copy) NSArray<StoriesJSONModel>*stories;

@end

NS_ASSUME_NONNULL_END
