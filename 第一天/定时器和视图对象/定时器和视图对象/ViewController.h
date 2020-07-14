//
//  ViewController.h
//  定时器和视图对象
//
//  Created by 郭红乐 on 2020/7/14.
//  Copyright © 2020 无. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    //定义一个定时器对象
    //可以每个一段时间发送一个消息
    //通过此消息调用相应的时间函数
    //通过此函数可以在固定时间段来完成一个根据时间间隔的任务
    NSTimer* _timeView;
}

//定时器属性，公有
@property(retain,nonatomic) NSTimer* timerView;

@end

