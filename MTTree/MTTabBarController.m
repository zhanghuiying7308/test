//
//  MTTabBarController.m
//  MTTree
//
//  Created by 漫涂 on 16/8/2.
//  Copyright © 2016年 漫涂. All rights reserved.
//

#import "MTTabBarController.h"
#import "ViewController.h"
#import "aViewController.h"
#import "bViewController.h"
#import "cViewController.h"
#import "dViewController.h"
#import "MTNaviController.h"
#import "Utils.h"
@interface MTTabBarController ()<UITabBarDelegate>

@end

@implementation MTTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tabBar.tintColor = [UIColor colorWithRed:0.000 green:0.502 blue:0.251 alpha:1.000];
    
    
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
