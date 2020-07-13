//
//  ViewController.m
//  UIView基础
//
//  Created by 郭红乐 on 2020/7/13.
//  Copyright © 2020 无. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //创建一个UIView对象
    //UIView是iOS中的视图对象
    //显示在屏幕上的所有的对象的基础类
    //所有显示在屏幕上的对象一点都继承与UIView
    //屏幕上能看到的对象都是UIView的子类
    //UIview是一个矩形对象，有背景颜色，有层级
    UIView* view = [[UIView alloc]init];
    
    //UIview的位置
    view.frame = CGRectMake(100, 100, 100, 200);
    
    view.backgroundColor = [UIColor redColor];
    
    //将新建的视图添加到父亲视图
    //1. 将新建视图显示到屏幕上
    //2. 将视图作为父亲视图的子视图管理起来
    [self.view addSubview:view];
    
    //隐藏
    //YES不显示
    //NO显示
    view.hidden = NO;
    
    //设置视图的透明度
    //1不透明
    //0透明
    //0.5 半透明
    view.alpha = 1;
    
    //是否显示不透明
    view.opaque = NO;
    
    //将自己从父亲视图删除掉
    //从父亲管理队列中删除，不会显示在屏幕上
    //[view removeFromSuperview];
    
    //总最后背景
    self.view.backgroundColor = [UIColor blueColor];
}
    

@end
