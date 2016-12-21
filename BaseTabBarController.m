//
//  BaseTabBarController.m
//  DiningTable
//
//  Created by mac on 2016/12/20.
//  Copyright © 2016年 test. All rights reserved.
//

#import "BaseTabBarController.h"
#import "HomeViewController.h"
#import "nearByViewController.h"
#import "MineViewController.h"
#import "informationViewController.h"
@interface BaseTabBarController ()

@end

@implementation BaseTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addView];
    self.tabBarController.tabBar.tintColor=[UIColor blackColor];
}
-(void)addView{
    //为tabBarController添加子控制器
    HomeViewController *home = [[HomeViewController alloc] init];
    //设置子控制器的图标等
    home.tabBarItem.title = @"主页";
    home.tabBarItem.image = [UIImage imageNamed:@"Image-1"];
    UINavigationController *navhome = [[UINavigationController alloc] initWithRootViewController:home];
    
    //为tabBarController添加子控制器
    nearByViewController *near = [[nearByViewController alloc] init];
    //设置子控制器的图标等
    near.tabBarItem.title = @"附近";
    near.tabBarItem.image = [UIImage imageNamed:@"Image-2"];
    UINavigationController *navnear = [[UINavigationController alloc] initWithRootViewController:near];
    //为tabBarController添加子控制器
    MineViewController *Mine = [[MineViewController alloc] init];
    //设置子控制器的图标等
    Mine.tabBarItem.title = @"个人";
    Mine.tabBarItem.image = [UIImage imageNamed:@"Image-3"];
    UINavigationController *navmine = [[UINavigationController alloc] initWithRootViewController:Mine];
    
    //为tabBarController添加子控制器
    informationViewController *infomation = [[informationViewController alloc] init];
    //设置子控制器的图标等
    infomation.tabBarItem.title = @"消息";
    infomation.tabBarItem.image = [UIImage imageNamed:@"Image"];
    UINavigationController * navinfoma = [[UINavigationController alloc] initWithRootViewController:infomation];
    self.viewControllers=@[navhome,navnear,navinfoma,navmine];
    
    
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    }

@end