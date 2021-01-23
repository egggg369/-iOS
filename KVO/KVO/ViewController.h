//
//  ViewController.h
//  KVO
//
//  Created by 郭红乐 on 2020/8/14.
//  Copyright © 2020 无. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "massage.h"
//@class aMassage;
@interface ViewController : UIViewController <UITextFieldDelegate>
@property (nonatomic, strong) massage *aMessage;
@property (nonatomic, strong) UITextField *nameTextField;
@property (nonatomic, strong) UITextField *passTextField;
@end

