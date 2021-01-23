//
//  Manager.m
//  Manger
//
//  Created by 郭红乐 on 2020/10/14.
//  Copyright © 2020 无. All rights reserved.
//

#import "Manager.h"
#import "TestModel.h"
//#import "StoriesJSONModel.h"
@implementation Manager

static Manager *manager = nil;

+ (instancetype) sharedManger {
    if(!manager) {
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            manager = [Manager new];
        });
    }
    return manager;
}

- (void) NetworkRequestSuccess:(Block) succeedBlock error:(ErrorBlock) errorBlock{
    //网络请求
    NSString *firstURLStr = [NSString stringWithFormat:@"https://news-at.zhihu.com/api/4/news/latest"];
    NSURL *firstURL = [NSURL URLWithString:firstURLStr];
    NSURLRequest *firstRequest = [NSURLRequest requestWithURL:firstURL];
    NSURLSession *firstSession = [NSURLSession sharedSession];
    NSURLSessionDataTask *firstdataTask = [firstSession dataTaskWithRequest:firstRequest completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if(error == nil) {
            NSDictionary *resultDic = [NSJSONSerialization JSONObjectWithData:data  options:NSJSONReadingMutableContainers error:nil];
            TestModel *firstModel = [[TestModel alloc] initWithDictionary:resultDic error:&error];
            succeedBlock(firstModel);
        }else {
            errorBlock(error);
        }
    }];
    [firstdataTask resume];
}

@end
