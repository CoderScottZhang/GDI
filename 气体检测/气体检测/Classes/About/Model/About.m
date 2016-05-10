//
//  About.m
//  气体检测
//
//  Created by ScottZhang on 16/5/10.
//  Copyright © 2016年 Scott. All rights reserved.
//

#import "About.h"

@implementation About
+(About *)aboutWithIcon:(NSString *)icon title:(NSString *)title
{
    About *about = [[self alloc] init];
    about.title = title;
    about.icon = icon;
    return about;
}

+(About *)aboutWithTitle:(NSString *)title
{
    About *about = [[self alloc] init];
    about.title = title;
    return about;
}
@end
