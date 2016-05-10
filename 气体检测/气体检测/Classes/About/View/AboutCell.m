//
//  AboutCell.m
//  气体检测
//
//  Created by ScottZhang on 16/5/10.
//  Copyright © 2016年 Scott. All rights reserved.
//

#import "AboutCell.h"
#import "About.h"
#import "ArrowItem.h"
@interface AboutCell()
@property(nonatomic, strong)UIImageView *arrowImage;
@end

@implementation AboutCell

-(UIImageView *)arrowImage
{
    if (_arrowImage == nil) {
        _arrowImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"right"]];
    }
    return _arrowImage;
}

+(instancetype)cellWithTableView:(UITableView *)tableView
{
    static NSString *ID = @"cell";
    AboutCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[AboutCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    }
    return cell;
}

-(void)setAbout:(About *)about
{
    _about = about;
    if ([about isKindOfClass:[ArrowItem class]]) {//如果是箭头模型
        self.accessoryView = self.arrowImage;
    }
    if (about.icon) {
        self.imageView.image = [UIImage imageNamed:about.icon];
    }
    self.textLabel.text = about.title;
}
@end
