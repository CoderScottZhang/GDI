//
//  About.h
//  气体检测
//
//  Created by ScottZhang on 16/5/10.
//  Copyright © 2016年 Scott. All rights reserved.
//  AboutCell 模型

#import <Foundation/Foundation.h>
typedef void(^Option)();
@interface About : NSObject
/** cell标题*/
@property(nonatomic, copy)NSString *title;
/** cell图片*/
@property(nonatomic, copy)NSString *icon;
/** cell选中的操作*/
@property(nonatomic, copy)Option option;

+(About *)aboutWithIcon:(NSString *)icon title:(NSString *)title;
+(About *)aboutWithTitle:(NSString *)title;
@end
