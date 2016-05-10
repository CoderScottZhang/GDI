//
//  Group.h
//  气体检测
//
//  Created by ScottZhang on 16/5/10.
//  Copyright © 2016年 Scott. All rights reserved.
//  cell分组模型

#import <Foundation/Foundation.h>

@interface Group : NSObject
/**
 *  头部标题
 */
@property(nonatomic, copy)NSString *header;
/**
 *  尾部标题
 */
@property(nonatomic, copy)NSString *footer;
/**
 *  cell成员
 */
@property(nonatomic, strong)NSArray *items;
+(instancetype)groupWithHeader:(NSString *)header andFooter:(NSString *)footer andItems:(NSArray *)items;

@end
