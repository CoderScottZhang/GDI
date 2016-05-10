//
//  ArrowItem.h
//  气体检测
//
//  Created by ScottZhang on 16/5/10.
//  Copyright © 2016年 Scott. All rights reserved.
//  带箭头的cell模型

#import "About.h"

@interface ArrowItem : About
/** 目标控制器*/
@property(nonatomic, assign)Class destClass;
+(instancetype)arrowItemWithTitle:(NSString *)title destClass:(Class)destClass;
+(instancetype)arrowItemWithIcon:(NSString *)icon title:(NSString *)title destClass:(Class)destClass;
@end
