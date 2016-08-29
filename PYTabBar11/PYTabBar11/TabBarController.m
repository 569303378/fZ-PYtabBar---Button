//
//  TabBarController.m
//  PYTabBar11
//
//  Created by Apple on 16/8/25.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "TabBarController.h"
#import "ViewController.h"
#import "A1ViewController.h"
#import "A2ViewController.h"
#import "A3ViewController.h"
#import "A4ViewController.h"
#import "YLTabBar.h"
@interface TabBarController () <YLTabBarDelegate, UIActionSheetDelegate>

@end

@implementation TabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    A1ViewController *A1 = [[A1ViewController alloc] init];
    [self setChildVC:A1 title:@"本地" image:@"11" selectedImage:@"1"];
    UINavigationController *NA1 = [[UINavigationController alloc] initWithRootViewController:A1];

    A2ViewController *A2 = [[A2ViewController alloc] init];
    [self setChildVC:A2 title:@"全国" image:@"22" selectedImage:@"2"];
    UINavigationController *NA2 = [[UINavigationController alloc] initWithRootViewController:A2];

    A3ViewController *A4 = [[A3ViewController alloc] init];
    [self setChildVC:A4 title:@"购物车" image:@"44" selectedImage:@"4"];
    UINavigationController *NA4 = [[UINavigationController alloc] initWithRootViewController:A4];

    A4ViewController *A5 = [[A4ViewController alloc] init];
    [self setChildVC:A5 title:@"我的" image:@"55" selectedImage:@"5"];
    UINavigationController *NA5 = [[UINavigationController alloc] initWithRootViewController:A5];
    //设置导航栏
    self.viewControllers = @[NA1, NA2, NA4, NA5];



    
    YLTabBar *tabBar = [[YLTabBar alloc] init];
    tabBar.delegate = self;
    [self setValue:tabBar forKeyPath:@"tabBar"];
}

/**
 *  添加一个子控制器
 *
 *  @param childVc            子控制器
 *  @param title              tabbar标题
 *  @param image              tabbar图片名
 *  @param selectedImage      tabbar选中图片名
 */
- (void)setChildVC:(UIViewController *)childVC title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage {
    childVC.tabBarItem.title = title;
    
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    //tabBar字体
    attrs[NSForegroundColorAttributeName] = [UIColor blackColor];
    attrs[NSFontAttributeName] = [UIFont boldSystemFontOfSize:12];
    [childVC.tabBarItem setTitleTextAttributes:attrs forState:UIControlStateNormal];
    
    //tabBar图片
    childVC.tabBarItem.image = [[UIImage imageNamed:image] imageWithRenderingMode:(UIImageRenderingModeAlwaysOriginal)];
    childVC.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:(UIImageRenderingModeAlwaysOriginal)];
    [self addChildViewController:childVC];
    
}

-(void)tabBarButtonClick:(YLTabBar *)tabBar
{

    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:nil
                                                             delegate:self
                                                    cancelButtonTitle:@"取消"
                                               destructiveButtonTitle:nil
                                                    otherButtonTitles:@"拍照", @"从相册选取", @"淘宝一键转卖", nil];
    [actionSheet showFromTabBar:tabBar];

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
