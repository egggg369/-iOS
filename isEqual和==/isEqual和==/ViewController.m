//
//  ViewController.m
//  isEqual和==
//
//  Created by 郭红乐 on 2020/10/20.
//  Copyright © 2020 无. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSString *s1 = @"123";
    NSString *s2 = [NSString stringWithFormat:@"%d", 123];
    
    BOOL e1 = s1 == s2;
    BOOL e2 = [s1 isEqual:s2];
    BOOL e3 = [s1 isEqualToString:s2];
    
    NSLog(@"%d, %d, %d", e1, e2, e3);
    
    
//    Person *person1 = [Person personWithName:kName1 birthday:self.date1];
//    Person *person2 = [Person personWithName:kName2 birthday:self.date2];
//
//    NSMutableArray *array1 = [NSMutableArray array];
//    [array1 addObject:person1];
//    NSMutableArray *array2 = [NSMutableArray array];
//    [array2 addObject:person2];
//    NSLog(@"array end -------------------------------");
//
//    NSMutableSet *set1 = [NSMutableSet set];
//    [set1 addObject:person1];
//    NSMutableSet *set2 = [NSMutableSet set];
//    [set2 addObject:person2];
//    NSLog(@"set end -------------------------------");
//
//    NSMutableDictionary *dictionaryValue1 = [NSMutableDictionary dictionary];
//    [dictionaryValue1 setObject:person1 forKey:kKey1];
//    NSMutableDictionary *dictionaryValue2 = [NSMutableDictionary dictionary];
//    [dictionaryValue2 setObject:person2 forKey:kKey2];
//    NSLog(@"dictionary value end -------------------------------");
//
//    NSMutableDictionary *dictionaryKey1 = [NSMutableDictionary dictionary];
//    [dictionaryKey1 setObject:kValue1 forKey:person1];
//    NSMutableDictionary *dictionaryKey2 = [NSMutableDictionary dictionary];
//    [dictionaryKey2 setObject:kValue2 forKey:person2];
//    NSLog(@"dictionary key end -------------------------------");

//    Person* p1 = [[Person alloc] initWithName:@"孙悟空" idStr: @"1234"];
//    Person* p2 = [[Person alloc] initWithName:@"孙行者" idStr: @"1234"];
//    Person* p3 = [[Person alloc] initWithName:@"孙xx" idStr: @"4321"];
//    //p1和p2的idStr相等，所以输出1 为真
//    NSLog(@"p1和p2是否相等？%d", [p1 isEqual: p2]);
//    //p2和p3的idStr不相等，所以输出0 为假
//    NSLog(@"p2和p3是否相等？%d", [p2 isEqual: p3]);
    
    // Do any additional setup after loading the view.
}


//hash方法只在对象被添加至NSSet和设置为NSDictionary的key时会调用
//- (NSUInteger)hash {
//    NSUInteger hash = [super hash];
//    NSLog(@"hash = %ld", hash);
//    return hash;
//}


//重写hash方法
//- (NSUInteger)hash {
//    return [self.name hash] ^ [self.birthday hash];
//
//    // NSObject的hash值是调用hash方法的对象地址，一般不用，需要重写一个hash的方法实现
//    //return [super hash];
//}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
