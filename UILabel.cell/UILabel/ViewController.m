//
//  ViewController.m
//  UILabel
//
//  Created by 郭红乐 on 2020/7/13.
//  Copyright © 2020 无. All rights reserved.
//

#import "ViewController.h"
#import "MyTableViewCell.h"
#import "SecondTableViewCell.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@end

@implementation ViewController

/*创建UI控件函数
- (void) createUI
{
    //定义并且创建一个UILabel对象
    //UILabel是可以显示在屏幕上，并且可以显示文字的一种UI视图
    UILabel* label = [[UILabel alloc]init];
    
    //显示文字的赋值，字符串对象
    label.text = @"你好，世界！";
    //设定label的显示位置
    label.frame = CGRectMake(100, 100, 160, 40);
    //设置label的背景颜色
    label.backgroundColor = [UIColor grayColor];
    //clearcolor是透明颜色
    //self.view.backgroundColor = [UIColor grayColor];
    //将label显示到屏幕上
    [self.view addSubview:label];
    
    //设置文字大小，使用系统默认字体
    label.font = [UIFont systemFontOfSize:12];
    
    //设置文字颜色
    label.textColor = [UIColor blueColor];
    
    //label的高级属性
    
    //设定阴影的颜色
    label.shadowColor = [UIColor grayColor];
    //阴影的偏移量
    label.shadowOffset = CGSizeMake(3,10);
    
    //设置文字对齐方式，默认靠左对齐
    label.textAlignment = NSTextAlignmentLeft;
}*/

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    //调用创建UI函数
  //  [self createUI];
    self.mainTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStyleInsetGrouped];
    [self.view addSubview:self.mainTableView];
    self.mainTableView.dataSource = self;
    self.mainTableView.delegate = self;
    
    
    
//    第一种方式注册
    [self.mainTableView registerClass:[MyTableViewCell class] forCellReuseIdentifier:@"123"];
    [self.mainTableView registerClass:[MyTableViewCell class] forCellReuseIdentifier:@"1234"];
    //[self.mainTableView registerClass:[SecondTableViewCell class] forCellReuseIdentifier:@"second"];
    
    
    //第二种方式注册 第二种cell比第一种cell创建更加清晰，代码分离度更高。
    //俩种cell写在了不同的类里
    //在这里我解释一下注册
    //我们使用的cell在滑出当前页面的时候都会被放入一个复用池中，这个复用池是栈结构，
    //在滑出下一个cell的时候，会查看服用池，有没有可复用cell，这个判断是根据这个复用标志的，如果有，那么将初始化这个cell的数据（改写），如果没有就重新创建一个cell再初始化。
//    [self.mainTableView registerClass:[MyTableViewCell class] forCellReuseIdentifier:@"123"];
//    [self.mainTableView registerClass:[SecondTableViewCell class] forCellReuseIdentifier:@"second"];
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 80;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //第一种方式，所有种类的cell放在一个类里。
    //不必创建大量控件,
    if (indexPath.section %2 == 0) {
        //第一种
        //比如双数行的cell有一个label、一个imageView
        //单数行有一样的俩个控件只是内容不同，那么创建俩个属性就行了，值在这里对应的每一行去改,可以用数组NSArray[indexpath.section][...]对应内容。
        //如果单数行和双数行控件很大不同，那就要创建俩套控件，值也在这里改。
        //自定义cell里
        MyTableViewCell *cell = [self.mainTableView dequeueReusableCellWithIdentifier:@"123" forIndexPath:indexPath];
        //cell.lable.text = @"firstOfDouble";
        return cell;
    } else {
         MyTableViewCell *cell = [self.mainTableView dequeueReusableCellWithIdentifier:@"1234" forIndexPath:indexPath];
        //cell.lable.text = @"firstOfOne";

        return cell;
    }
    
    
    
    
    
    
    //第二种方式
    //将不同种cell分开写，也就是单数行对应一个类，双数行对应一个类。
    //这就把需要的控件写成属性即可，值也在这里改。
//    if (indexPath.section %2 == 0) {
//
//        MyTableViewCell *cell = [self.mainTableView dequeueReusableCellWithIdentifier:@"123" forIndexPath:indexPath];
//        //cell.lable.text = @"SecondOfOne";
//
//        return cell;
//    } else {
//         SecondTableViewCell *cell = [self.mainTableView dequeueReusableCellWithIdentifier:@"second" forIndexPath:indexPath];
//        //cell.lable.text = @"SecondOfDouble";
//        return cell;
//    }
//
}
@end
