//
//  main.m
//  copy
//
//  Created by 郭红乐 on 2020/8/12.
//  Copyright © 2020 无. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //NSLog(@"Hello, World!");
        
        //NSString的copy ---- 浅复制
        NSString *str = @"123";
        NSString *copyStr = [str copy];
        NSLog(@"%@ ---- %@", str, copyStr);
        NSLog(@"%p ---- %p", str, copyStr);
        
        //NSMutableString的copy ---- 深复制 (无论是可变对象还是不可变对象，copy方法返回的对象是不可变对象。)
        NSMutableString *mutableStr = [NSMutableString stringWithString:@"123"];
        NSString *copyMutableStr = [mutableStr copy];
        NSLog(@"%p  ----  %p", mutableStr, copyMutableStr);
        
        //NSString的mutableCopy ---- 深复制
        NSString *str1 = @"123";
        NSString *copyStr1 = [str1 mutableCopy];
        NSLog(@"%@ ---- %@", str1, copyStr1);
        NSLog(@"%p ---- %p", str1, copyStr1);
        
        //NSMutableString的mutableCopy ---- 深复制
        NSMutableString *mutableStr1 = [NSMutableString stringWithString:@"123"];
        NSString *copyMutableStr1 = [mutableStr1 mutableCopy];
        NSLog(@"%@  ----  %@", mutableStr1, copyMutableStr1);
        NSLog(@"%p  ----  %p", mutableStr1, copyMutableStr1);

        //非集合类不可变对象的copy ---- 浅复制
        NSArray *array = @[@"aaa",@"bbb"];
        NSArray *copyArray = [array copy];
        NSLog(@"%@ ---- %@", array, copyArray);
        NSLog(@"%p ---- %p", array, copyArray);
        NSLog(@"%p ---- %p", array[0], copyArray[0]);
        
        //非集合类不可变对象的mutableCopy ---- 单层深复制
        NSArray *array1 = @[@"aaa",@"bbb"];
        NSArray *copymutableCopy1 = [array mutableCopy];
        NSLog(@"%@ ---- %@", array1, copymutableCopy1);
        NSLog(@"%p ---- %p", array1, copymutableCopy1);
        NSLog(@"%p ---- %p", array1[0], copymutableCopy1[0]);
        
        //非集合类的可变对象copy ---- 单层深复制
        NSMutableArray *mutableArray = [NSMutableArray arrayWithObjects:@"aaa",@"bbb", nil];
        NSArray *copymutableArray = [mutableArray copy];
        NSLog(@"%@ ---- %@", mutableArray, copymutableArray);
        NSLog(@"%p ---- %p", mutableArray, copymutableArray);
        NSLog(@"%p ---- %p", mutableArray[0], copymutableArray[0]);
        
        //非集合类的可变对象的mutableCopy ---- 单层深复制
        NSMutableArray *mutableArray1 = [NSMutableArray arrayWithObjects:@"aaa",@"bbb", nil];
        NSArray *mutablecopymutableArray1 = [mutableArray1 mutableCopy];
        NSLog(@"%@ ---- %@", mutableArray1, mutablecopymutableArray1);
        NSLog(@"%p ---- %p", mutableArray1, mutablecopymutableArray1);
        NSLog(@"%p ---- %p", mutableArray1[0], mutablecopymutableArray1[0]);
    }
    return 0;
}
