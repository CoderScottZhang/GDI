//
//  ArrowItem.m
//  气体检测
//
//  Created by ScottZhang on 16/5/10.
//  Copyright © 2016年 Scott. All rights reserved.
//

#import "ArrowItem.h"

@implementation ArrowItem
+(instancetype)arrowItemWithTitle:(NSString *)title destClass:(__unsafe_unretained Class)destClass
{
    ArrowItem *item = [super aboutWithTitle:title];
    item.destClass = destClass;
    return item;
}

+(instancetype)arrowItemWithIcon:(NSString *)icon title:(NSString *)title destClass:(__unsafe_unretained Class)destClass
{
    ArrowItem *item = [super aboutWithIcon:icon title:title];
    item.destClass = destClass;
    return item;
}
@end
