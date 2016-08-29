//
//  ViewController.m
//  PYTabBar11
//
//  Created by Apple on 16/8/25.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.navigationItem.title = @"首页";
    self.view.backgroundColor = [UIColor orangeColor];

}
//- (instancetype)init {
//    self = [super init];
//    
//    if (self) {
//        self.navigationController.navigationBar.hidden = YES;
//    }
//    
//    return self;
//}
//
//- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
//    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
//    
//    if (self) {
//        self.navigationController.navigationBar.hidden = YES;
//    }
//    
//    return self;
//}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
