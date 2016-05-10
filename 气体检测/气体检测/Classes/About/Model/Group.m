//
//  Group.m
//  气体检测
//
//  Created by ScottZhang on 16/5/10.
//  Copyright © 2016年 Scott. All rights reserved.
//

#import "Group.h"

@implementation Group

+(instancetype)groupWithHeader:(NSString *)header andFooter:(NSString *)footer andItems:(NSArray *)items
{
    Group *group = [[self alloc] init];
    group.header = header;
    group.footer = footer;
    group.items = items;
    return group;
}

@end
