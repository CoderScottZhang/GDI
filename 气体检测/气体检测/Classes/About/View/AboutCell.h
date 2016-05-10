//
//  AboutCell.h
//  气体检测
//
//  Created by ScottZhang on 16/5/10.
//  Copyright © 2016年 Scott. All rights reserved.
//

#import <UIKit/UIKit.h>
@class About;
@interface AboutCell : UITableViewCell
@property(nonatomic, strong)About *about;
+(instancetype)cellWithTableView:(UITableView *)tableView;
@end
