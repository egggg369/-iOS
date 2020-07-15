//
//  ViewController.h
//  UIScrollView高级
//
//  Created by 郭红乐 on 2020/7/15.
//  Copyright © 2020 无. All rights reserved.
//

#import <UIKit/UIKit.h>
//UIScrollView的协议函数
@interface ViewController : UIViewController<UIScrollViewDelegate>
{
    //定义一个滚动视图成员变量
    UIScrollView* _scrollView;
}

@end

