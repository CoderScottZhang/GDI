//
//  AboutViewController.m
//  气体检测
//
//  Created by ScottZhang on 16/5/10.
//  Copyright © 2016年 Scott. All rights reserved.
//

#import "AboutViewController.h"
#import "Group.h"
#import "About.h"
#import "ArrowItem.h"
#import "Test1ViewController.h"
#import "AboutCell.h"
#import "AdviceViewController.h"
@interface AboutViewController ()
/** cell的分组*/
@property(nonatomic, strong)NSArray *groups;
@end

@implementation AboutViewController
-(NSArray *)groups
{
    if (_groups == nil) {
        ArrowItem *advice = [ArrowItem arrowItemWithIcon:@"write" title:@"意见反馈" destClass:[AdviceViewController class]];

        About *help = [About aboutWithIcon:@"phone" title:@"使用帮助"];
        help.option = ^(){
            NSLog(@"help");
        };
        
        ArrowItem *knowledge = [ArrowItem arrowItemWithIcon:@"knowledge" title:@"科普知识" destClass:[Test1ViewController class]];
        
        Group *group1 = [Group groupWithHeader:nil andFooter:nil andItems:@[advice, knowledge]];
        
        About *update = [About aboutWithIcon:@"faq" title:@"检测新版本"];
        update.option = ^(){
            NSLog(@"检测新版本");
        };
        
        About *web = [About aboutWithIcon:@"company_website" title:@"官方网站"];
        web.option = ^(){
            NSLog(@"打开官网");
        };
        About *link = [About aboutWithIcon:@"link" title:@"淘宝购买"];
        link.option = ^(){
            NSLog(@"打开淘宝");
        };
        Group *group2 = [Group groupWithHeader:nil andFooter:nil andItems:@[help, update, web, link]];
        
        _groups = @[group1, group2];
    }
    return _groups;
}

-(instancetype)init
{
    return [super initWithStyle:UITableViewStyleGrouped];
}

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.groups.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    Group *group = self.groups[section];
    return group.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    AboutCell *cell = [AboutCell cellWithTableView:tableView];
    Group *group = self.groups[indexPath.section];
    About *about = group.items[indexPath.row];
    cell.about = about;
    return cell;
}

#pragma mark Table view delegate
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    Group *group = self.groups[indexPath.section];
    About *about = group.items[indexPath.row];
    if (about.option) {
        about.option();
    }
    if ([about isKindOfClass:[ArrowItem class]]) {
        ArrowItem *arrowItem = (ArrowItem *)about;
        if (arrowItem.destClass) {
            UIViewController *vC = [[arrowItem.destClass alloc] init];
            [self.navigationController pushViewController:vC animated:YES];
        }
    }
}
@end
