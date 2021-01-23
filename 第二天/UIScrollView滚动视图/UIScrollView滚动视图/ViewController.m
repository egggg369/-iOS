//
//  ViewController.m
//  UIScrollView滚动视图
//
//  Created by 郭红乐 on 2020/7/14.
//  Copyright © 2020 无. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIScrollView *_sv;
    UIPageControl *_pc;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //定义并且创建一个滚动视图
    //可以对视图内容进行滚屏查看功能
    _sv = [[UIScrollView alloc]init];
    
    //设置滚动视图的位置，使用矩形来定位视图位置
    _sv.frame = CGRectMake(0, 0, 350, 589);
    
    //是否按照整页来滚动视图
    _sv.pagingEnabled = YES;
    //是否可以开启滚动效果
    _sv.scrollEnabled = YES;
    //设置画布的大小，画布显示在滚动视图内部，一般大于Frame的大小
    _sv.contentSize = CGSizeMake(350*5, 589);
    //是否可以边缘弹动效果
    _sv.bounces = YES;
    //开启横向弹动效果
    _sv.alwaysBounceHorizontal = YES;
    //开启纵向弹动效果
    _sv.alwaysBounceVertical = YES;
    //显示横向滚动条
    _sv.showsHorizontalScrollIndicator = YES;
    //是否实现纵向滚动条
    _sv.showsVerticalScrollIndicator = YES;
    //设置背景颜色
    _sv.backgroundColor = [UIColor whiteColor];
    
    for(int i = 0; i < 5; i++) {
        NSString* strName = [NSString stringWithFormat:@"%d.jpeg",i+1];
        //加载图片
        UIImage* image = [UIImage imageNamed:strName];
        //加载图片到视图
        UIImageView* iView = [[UIImageView alloc]initWithImage:image];
        iView.frame = CGRectMake(350*i, 0, 350, 579);
        [_sv addSubview:iView];
    }
    
    [self.view addSubview:_sv];
    
    _pc = [[UIPageControl alloc] initWithFrame:CGRectMake(30, 500, 300, 30)];
    _pc.backgroundColor = [UIColor clearColor];
    //有几个小圆点
    _pc.numberOfPages = 6;
    //当前显示第几个
    _pc.currentPage = 0;
    //当前小圆点的颜色
    _pc.currentPageIndicatorTintColor = [UIColor whiteColor];
    //其他小圆点的颜色
    //pc.pageIndicatorTintColor = [UIColor purpleColor];
    
    [_pc addTarget:self action:@selector(change:) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:_pc];
    _sv.delegate =self;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    //开始滚动的方法
    _pc.currentPage = _sv.contentOffset.x/350;
}

- (void)change:(UIPageControl *)pc
{
    [_sv setContentOffset:CGPointMake(_pc.currentPage * 350, 0) animated:YES];
    
}

@end
