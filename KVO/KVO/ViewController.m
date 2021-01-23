//
//  ViewController.m
//  KVO
//
//  Created by 郭红乐 on 2020/8/14.
//  Copyright © 2020 无. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    /*方法： A addObserver: B forKeyPath: options: context;
    参数含义：
     1. A 为被观察者； B （observe) : 观察者，监听属性变化的对象。该对象必须要实现observe ValueForKeyPath: ofObjec:change:context: 方法
     2. keyPath: 要观察的属性的名称，要和属性声明的名称一致。
     3. options: 对KVO机制进行配置，修改KVO通知的时机以及通知的内容，决定提供给观察者change字典中的具体信息有哪些
     4. context：传入任意类型的对象，在“接收消息回调”的代码中可以接收到这个对象，可以写为nil
     options解析
     typedef NS_OPTTIONS(NSUInteger, NSKeyValueObservingOptions) {
            
     
    typedef NS_OPTTIONS(NSUInteger, NSKeyValueObservingOptions) {
        //表示监听对象的新值，即变化后的值，change字典中会包含该key的健值对，通过该key即new，就可以取到属性变化后的值
        NSKeyValueObservingOptionNew = 0x01,
        //表示监听对象的新值，即变化前的值，change字典中会包含该key的健值对，通过该key,即old，就可以取到属性变化后的值
        NSKeyValueObservingOptionOld = 0x02;
        //在注册观察者的方法return的时候就会发出一次通知，比如：在viewDidLoad方法运行完，通知就发出去了
        NSKeyValueObservingOptionInitial API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0) = 0x04);
        NSKeyValueObservingOptionPrior API_AVAILABLE(masos(10.5), ios(2.0),watchos(2.0), tvos(9.0) = 0x08);
    }
    */
    
    
//    _aMessage = [[massage alloc] init];
//    _aMessage.strNameWord = @"123";
//    _aMessage.strPassWord = @"456";
//
//    //1. 注册监听
//    [_aMessage addObserver:self forKeyPath:@"strNameWord" options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld context:nil];
//    [_aMessage addObserver:self forKeyPath:@"strPassWord" options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld context:nil];
//
//    _nameTextField = [[UITextField alloc] init];
//    [self.view addSubview:_nameTextField];
//    _nameTextField.frame = CGRectMake(50, 150, 300, 50);
//    _nameTextField.layer.masksToBounds = YES;
//    _nameTextField.layer.borderWidth = 2;
//    _nameTextField.layer.cornerRadius = 5;
//    _nameTextField.layer.borderColor = [UIColor blackColor].CGColor;
//    _nameTextField.delegate = self;
//
//    _passTextField = [[UITextField alloc] init];
//    [self.view addSubview:_passTextField];
//    _passTextField.frame = CGRectMake(50, 230, 300, 50);
//    _passTextField.layer.masksToBounds = YES;
//    _passTextField.layer.borderWidth = 2;
//    _passTextField.layer.cornerRadius = 5;
//    _passTextField.layer.borderColor = [UIColor blackColor].CGColor;
//    _passTextField.delegate = self;
//
//    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//    [self.view addSubview:btn];
//    [btn addTarget:self action:@selector(pressBtn) forControlEvents:UIControlEventTouchUpInside];
//    [btn setTitle:@"revise" forState:UIControlStateNormal];
//    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    btn.frame = CGRectMake(150, 320, 100, 50);
    
    Person *p = [Person new];
    p.name = @"cjp";
    p.age = 30;
    
    /*
     p1: 告诉系统哪个对象监听
     p2: 监听当前对象的哪个属性
     p3: 监听到属性改变后，传递什么值
     p4: 需要传递的参数（这个参数不是传递给属性的）
     */
    //给p这个对象添加一个监听，监听p对象的age属性的改变，只要age属性改变就通知self
    [p addObserver:self forKeyPath:@"age" options:NSKeyValueObservingOptionOld|NSKeyValueObservingOptionNew context:nil];
    
    p.age = 50;
    NSLog(@"------------------");
    
    // 注意: 如果使用KVO监听某个对象的属性, 当对象释放之前一定要移除监听
    //  reason: 'An instance 0x7f9483516610 of class Person was deallocated while key value observers were still registered with it.
    // 注意: KVO只能监听通过set方法修改的值
    /*
     KVO的原理:
     只要给一个对象注册一个监听, 那么在运行时, 系统就会自动给该对象生成一个子类对象,
     并且重写自动生成的子类对象的被监听属性的set方法, 然后在set方法中通知监听者
     NSKVONotifying_Person
     */
    
    p.age = 998;
    
    //移除监听
    [p removeObserver:self forKeyPath:@"age"];
    
}

//- (void)pressBtn {
//    NSLog(@"revise");
//    //2. 触发监听
//    //第一种方法
////    NSDictionary *newMassageDictionary = [NSDictionary dictionaryWithObjectsAndKeys:_nameTextField.text,@"strNameWord", _passTextField.text, @"strPassWord", nil];
////    [_aMessage setValuesForKeysWithDictionary:newMassageDictionary];
//
//    //第二种方法
//    //[_aMassage setValue:@"000" forKey:@"strPassWord"];
//
//    //第三种方法
//    if(_nameTextField.text) {
//        _aMessage.strNameWord = _nameTextField.text;
//    }
//    if(_passTextField.text) {
//        _aMessage.strPassWord = _passTextField.text;
//    }
//}
//
///*
// 方法：observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context
// 参数:
// keyPath: 所观察对象的属性
// object：所观察的对象
// change：属性值的变化
//
// change的解析
// NSKeyValueChangeKey枚举
// FOUNDATION_EXPORT NSKeyValueChangeKey const NSKeyValueChangeKindKey;
// FOUNDATION_EXPORT NSKeyValueChangeKey const NSKeyValueChangeNewKey;
// FOUNDATION_EXPORT NSKeyValueChangeKey const NSKeyValueChangeOldKey;
// FOUNDATION_EXPORT NSKeyValueChangeKey const NSKeyValueChangeIndexesKey;
// FOUNDATION_EXPORT NSKeyValueChangeKey const NSKeyValueChangeNotificationIsPriorKey
//
// NSKeyValueChange枚举
// typedef NS_ENUM(NSUInteger, NSKeyValueChange) {
//     NSKeyValueChangeSetting = 1,
//     NSKeyValueChangeInsertion = 2,
//     NSKeyValueChangeRemoval = 3,
//     NSKeyValueChangeReplacement = 4,
// };
// 当change[NSKeyValueChangeKindKey]是NSKeyValueChangeSetting的时候，说明被观察的属性的setter方法被调用了。
// inser，remove，replace：被观察者属性是集合类型，且对它进行inser，remove，replace操作的时候会返回这三种Key
// */
//
//
//
////实现回调方法
//- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
//    if([keyPath isEqualToString:@"strNameWord"]) {
//        NSLog(@"old nameWord: %@", [change objectForKey:@"old"]);
//        NSLog(@"new nameWord: %@", [change objectForKey:@"new"]);
//    }
//
//    if([keyPath isEqualToString:@"strPassWord"]) {
//        NSLog(@"old PassWord: %@", [change objectForKey:@"old"]);
//        NSLog(@"new PassWord: %@", [change objectForKey:@"new"]);
//    }
//}
//
////移除监听
//- (void)dealloc {
//    [_aMessage removeObserver:self forKeyPath:@"strPassWord"];
//}

// 只要监听到属性的改变就会调用
// keyPath: 被监听的属性名称
// object : 被监听的对象
// context: 注册监听的时候传入的值
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context
{
    int new = [change[NSKeyValueChangeNewKey] intValue];//取key为new对应的值
    int old = [change[NSKeyValueChangeOldKey] intValue];//取key为old对应的值
    
    NSLog(@"keyPath = %@, object = %@, change = %@, context = %@", keyPath, object,change,context);
}

@end
