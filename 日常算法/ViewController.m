//
//  ViewController.m
//  日常算法
//
//  Created by jjs on 2017/12/16.
//  Copyright © 2017年 jjs. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    NSLog(@"哈哈哈哈哈%td",[self demotest:12345]);
//    NSLog(@"哈哈哈哈哈%td",[self demotest:1230045]);
//    NSLog(@"哈哈哈哈哈%td",[self demotest:123400]);
//    NSLog(@"哈哈哈哈哈%td",[self demotest:-12345]);
//    NSLog(@"哈哈哈哈哈%td",[self demotest:-1234500]);
//    NSLog(@"哈哈哈哈哈%td",[self demotest:0]);

    NSLog(@"\n\n\n%@",[self printStringWithLength:15]);
    NSLog(@"\n\n\n%@",[self printStringWithLength:150]);
    NSLog(@"\n\n\n%@",[self printStringWithLength:100]);
    NSLog(@"\n\n\n%@",[self printStringWithLength:99]);
}
// [https://leetcode.com/problems/hamming-distance/description/]
- (NSArray <NSString *>*)printStringWithLength:(NSInteger)length{
    NSMutableArray *arr = [NSMutableArray array];
    for (int i = 1; i <= length; i++){
        if(i%15 == 0){
            [arr addObject:@"FizzBuzz"];
        }else if(i%5 == 0){
            [arr addObject:@"Buzz"];
        }else if(i%3 == 0){
            [arr addObject:@"Fizz"];
        }else{
            [arr addObject:[NSString stringWithFormat:@"%d",i]];
        }
    }
    return [arr copy];
}
// 别人的写法 
- (NSInteger)oc_invertInteger__1:(NSInteger)x{
    NSInteger result = 0;
    while (x!= 0) {
        NSInteger tail = x %10;
        NSInteger newResult = result * 10 + tail;
//        if ((newResult - tail)/10!=result) {
//            return 0;
//        }
        result =  newResult;
        x = x/10;
    }
    return result;
}

// 反转整数
- (NSInteger)oc_invertInteger__2:(NSInteger)integer{
    if (integer > 0 ) {
        // 12345
        
        return [self dealWithInteger:integer];
    }else{
        NSInteger tempInteger = 0 - integer;
        return 0 - [self dealWithInteger:tempInteger];
    }
}
- (NSInteger)dealWithInteger:(NSInteger)integer{
    
    NSString *intStr = [NSString stringWithFormat:@"%td",integer];
    
    NSMutableArray *strArr = [NSMutableArray array];
    for(NSInteger i=intStr.length-1;i>=0;i--){
        [strArr addObject:[intStr substringWithRange:NSMakeRange(i, 1)]];
    }
    NSString *resultStr = @"";
    for (NSInteger i = 0; i < strArr.count;i++) {
        resultStr =  [resultStr stringByAppendingString:strArr[i]];
    }
    return [resultStr integerValue];
}

@end
