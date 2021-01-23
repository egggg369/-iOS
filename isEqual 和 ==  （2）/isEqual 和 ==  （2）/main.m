//
//  main.m
//  isEqual 和 ==  （2）
//
//  Created by 郭红乐 on 2020/10/20.
//  Copyright © 2020 无. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        Person* p1 = [[Person alloc] initWithName:@"孙悟空" idStr: @"1234"];
//        Person* p2 = [[Person alloc] initWithName:@"孙悟空" idStr: @"1234"];
//        Person* p3 = [[Person alloc] initWithName:@"孙行者" idStr: @"4321"];
//        //p1和p2的idStr相等，所以输出1 为真
//        NSLog(@"p1和p2是否相等？%d", [p1 isEqual: p2]);
//        //NSLog(@"%d", p1 hash);
//        //NSLog(@"hash = %ld", hash);
//        //    return hash;
//        //p2和p3的idStr不相等，所以输出0 为假
//        NSLog(@"p2和p3是否相等？%d", [p2 isEqual: p3]);
        
//        Person *person1 = [Person personWithName:KName1 birthday:self.date1];
//        Person *person2 = [Person personWithName:KName2 birthday:self.date2];
        
        Person *person1 = [Person personWithName:@"孙悟空" birthday:@"15"];
        Person *person2 = [Person personWithName:@"孙悟空" birthday:@"12"];
        
        NSMutableArray *array1 = [NSMutableArray array];
        [array1 addObject:person1];
        NSMutableArray *array2 = [NSMutableArray array];
        [array2 addObject:person2];
        NSLog(@"array end ----------------------------------");
        
        NSMutableSet *set1 = [NSMutableSet set];
        [set1 addObject:person1];
        NSMutableSet *set2 = [NSMutableSet set];
        [set2 addObject:person2];
        NSLog(@"set end --------------------------");
        
        NSMutableDictionary *dictionaryValue1 = [NSMutableDictionary dictionary];
        [dictionaryValue1 setObject:person1 forKey:kKey1];
        NSMutableDictionary *dictionaryValue2 = [NSMutableDictionary dictionary];
        [dictionaryValue2 setObject:person2 forKey:kKey2];
        NSLog(@"dictionary value end ---------------------------");
        
        NSMutableDictionary *dictionaryKey1 = [NSMutableDictionary dictionary];
        [dictionaryKey1 setObject:kValue1 forKey:person1];
        NSMutableDictionary *dictionaryKey2 = [NSMutableDictionary dictionary];
        [dictionaryKey2 setObject:kValue2 forKey:person2];
        
        
        
        
    }
    return 0;
}

//hash方法只在对象被添加至NSSet和设置为NSDictionary的key时会调用
- (NSUInteger)hash {
    NSUInteger hash = [super hash];
    NSLog(@"hash = %ld", hash);
    return hash;
}
