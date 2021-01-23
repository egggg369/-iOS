//
//  ViewController.h
//  MVC简易登陆注册页面
//
//  Created by 郭红乐 on 2020/8/16.
//  Copyright © 2020 无. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LandView.h"
#import "LandModel.h"
@interface ViewController : UIViewController <PassButtonDelegate>

@property (nonatomic, strong) LandView *landView;
@property (nonatomic, strong) LandModel *mModel;


@end

