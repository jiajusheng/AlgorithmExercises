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
//    NSLog(@"哈哈哈哈哈%td",[self test1:12345]);
//    NSLog(@"哈哈哈哈哈%td",[self test1:1230045]);
//    NSLog(@"哈哈哈哈哈%td",[self test1:123400]);
//    NSLog(@"哈哈哈哈哈%td",[self test1:-12345]);
//    NSLog(@"哈哈哈哈哈%td",[self test1:-1234500]);
//    NSLog(@"哈哈哈哈哈%td",[self test1:0]);
    
//
//    NSLog(@"\n\n\n%@",[self printStringWithLength:15]);
//    NSLog(@"\n\n\n%@",[self printStringWithLength:150]);
//    NSLog(@"\n\n\n%@",[self printStringWithLength:100]);
//    NSLog(@"\n\n\n%@",[self printStringWithLength:99]);
    
//    NSLog(@"\n\n\n%td",[self test3:4 :1]);
//    NSLog(@"\n\n\n%td",[self test3:1 :10]);
//    NSLog(@"\n\n\n%td",[self test3:5 :11]);
//    NSLog(@"\n\n\n%td",[self test3:1 :8]);
//    NSLog(@"\n\n\n%td",[self test3:1 :70]);
    
        NSLog(@"\n\n\n%d",[self test4_1:2]);
        NSLog(@"\n\n\n%d",[self test4_1:8]);
        NSLog(@"\n\n\n%d",[self test4_1:16]);
        NSLog(@"\n\n\n%d",[self test4_1:32]);
        NSLog(@"\n\n\n%d",[self test4_1:6]);
        NSLog(@"\n\n\n%d",[self test4_1:10]);
        NSLog(@"\n\n\n%d",[self test4_1:18]);

}

/**
 第四天
 231. Power of Two
 Given an integer, write a function to determine if it is a power of two.

 @param x x
 @return  yes/no
 */
- (BOOL)test4:(NSInteger)x{
    
    float fx = (float)x;
    if (fx<2&&fx!=0) {
        return NO;
    }else if(fx>2){
        return [self test4_a:fx/2.0];
    }else{
        return YES;
    }
}
- (BOOL)test4_a:(float)x{
    float fx = (float)x;
    if (fx<2) {
        return NO;
    }else if(fx>2){
        return [self test4_a:fx/2.0];
    }else{
        return YES;
    }
}

- (BOOL)test4_1:(NSInteger)x{
    
    return (x&(x-1)) == 0;
}
/**
 第三天

 The Hamming distance between two integers is the number of positions at which the corresponding bits are different.
 
 Given two integers x and y, calculate the Hamming distance.
 
 Note:
 0 ≤ x, y < 231.
 
 Example:
 
 Input: x = 1, y = 4
 
 Output: 2
 
 Explanation:
 1   (0 0 0 1)
 4   (0 1 0 0)
 ↑   ↑
 
 The above arrows point to positions where the corresponding bits are different.
 */
- (NSInteger)test3:(NSInteger)x :(NSInteger)y{
    // 0001     1
    // 0010     2
    // 0011     3
    // 0100     4
    // 0101     5
    // 0110     6
    // 0111     7
    // 1000     8
    // 1001     9
    // 1010     10
    // 1011     11
    if ((x^y) == 0) return 0;

    return (x^y)%2 + [self test3:x>>1:y>>1];
}

// 第二天
// [https://leetcode.com/problems/hamming-distance/description/]
- (NSArray <NSString *>*)test2:(NSInteger)length{
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


// 第一天
// 反转整数
- (NSInteger)test1:(NSInteger)integer{
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

@end
