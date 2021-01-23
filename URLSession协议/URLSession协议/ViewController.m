//
//  ViewController.m
//  URLSession协议
//
//  Created by 郭红乐 on 2020/8/3.
//  Copyright © 2020 无. All rights reserved.
//

#import "ViewController.h"

#define LIST_URL @"https://geoapi.heweather.net/v2/city/lookup?location=beijing&key=b92646e0f4194731b50870798cfad1d0"

@interface ViewController () <NSURLSessionDataDelegate>
@property (nonatomic, strong) NSMutableData * data;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
}

- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    //1.创建请求地址
    NSURL *url = [NSURL URLWithString:LIST_URL];
    //2.创建请求类
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    //3.创建会话
    /*
     @property (class, readonly, strong) NSURLSessionConfiguration *defaultSessionConfiguration;
     @property (class, readonly, strong) NSURLSessionConfiguration *ephemeralSessionConfiguration;

     + (NSURLSessionConfiguration *)backgroundSessionConfigurationWithIdentifier:(NSString *)identifier
     */
    
    //delegateQueue 表示协议方法在哪个线程中执行
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration] delegate:self delegateQueue:[NSOperationQueue mainQueue]];
    //4. 根据会话创建任务
    NSURLSessionDataTask * dataTask = [session dataTaskWithRequest:request];
    //5. 启动任务
    [dataTask resume];
}

//接收到服务器的响应
- (void) URLSession:(NSURLSession *)session dataTask:(NSURLSessionDataTask *)dataTask didReceiveResponse:(nonnull NSURLResponse *)response completionHandler:(nonnull void (^)(NSURLSessionResponseDisposition))completionHandler
{
    NSLog(@"didReceiveResponse");
    
    if(self.data == nil) {
        self.data = [[NSMutableData alloc] init];
    }else {
        self.data.length = 0;
    }
    
    /*
     NSURLSessionResponseCancel = 0,              默认请求之后步接受服务器的数据                      Cancel the load, this is the same as -[task cancel]
     NSURLSessionResponseAllow = 1,               允许接收服务器的数据                         Allow the load to continue
     NSURLSessionResponseBecomeDownload = 2,      转成下载任务                         Turn this request into a download
     NSURLSessionResponseBecomeStream            转成流*/
    completionHandler  (NSURLSessionResponseAllow);
}

//接收到数据，该方法会被调用多次
- (void) URLSession:(NSURLSession *)session dataTask:(NSURLSessionDataTask *)dataTask didReceiveData:(NSData *)data
{
    
    NSLog(@"didReceiveData");
    [self.data appendData:data];
}

//数据请求完成或请求出现错误
- (void) URLSession:(NSURLSession *)session task:(NSURLSessionTask *)task didCompleteWithError:(nullable NSError *)error
{
    NSLog(@"didCompleteWithError");
    
    if(error == nil) {
        //解析数据
        id objc = [NSJSONSerialization JSONObjectWithData:self.data options:NSJSONReadingMutableContainers error:nil];
        NSLog(@"--%@", objc);
    }
}


@end
