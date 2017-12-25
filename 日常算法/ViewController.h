//
//  ViewController.h
//  日常算法
//
//  Created by jjs on 2017/12/16.
//  Copyright © 2017年 jjs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@end

@interface TreeNode:NSObject
@property(nonatomic, assign )TreeNode left;
@property(nonatomic, assign )TreeNode right;
@property(nonatomic, assign )NSInteger current;

@end
