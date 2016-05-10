//
//  GDITabBarController.m
//  气体检测
//
//  Created by ScottZhang on 16/5/10.
//  Copyright © 2016年 Scott. All rights reserved.
//

#import "GDITabBarController.h"
#import "GDINavigationController.h"
#import "DetectionViewController.h"
#import "HistoryViewController.h"
#import "SettingViewController.h"
#import "AboutViewController.h"
@interface GDITabBarController ()

@end

@implementation GDITabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    //DetectionVc
    DetectionViewController *detectionVc = [[DetectionViewController alloc] init];

    [self addChildVcWith:detectionVc title:@"检测" image:@"tabbar_detection" selectedImage:@"tabbar_detection_selected"];
    //HistoryVc
    HistoryViewController *historyVc = [[HistoryViewController alloc] init];
    [self addChildVcWith:historyVc title:@"历史" image:@"tabbar_history" selectedImage:@"tabbar_history_selected"];
    //Setting
    SettingViewController *settingVc = [[SettingViewController alloc] init];
    [self addChildVcWith:settingVc title:@"设置" image:@"tabbar_setting" selectedImage:@"tabbar_setting_selected"];
    //About
    AboutViewController *aboutVc = [[AboutViewController alloc] init];
    [self addChildVcWith:aboutVc title:@"关于" image:@"tabbar_about" selectedImage:@"tabbar_about_selected"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)addChildVcWith:(UIViewController *)vC title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage
{
    vC.title = title;
    vC.view.backgroundColor = [UIColor colorWithRed:230/256.0 green:230/256.0 blue:230/256.0 alpha:1.0];
    [vC.tabBarItem setImage:[UIImage imageNamed:image]];
    
    [vC.tabBarItem setSelectedImage:[[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    GDINavigationController *nav = [[GDINavigationController alloc] init];
    [nav pushViewController:vC animated:YES];
    [self addChildViewController:nav];
}

@end
