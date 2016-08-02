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
    [self.tabBar setBackgroundImage:[Utils createImageWithColor:[UIColor yellowColor]]];
    [self setTabBarControllers];
    
}
-(void)setTabBarControllers{
    [self addChildViewController:[aViewController new] imageName:@"产品管理-OFF" selectedImageName:@"产品管理" title:@"产品管理"];
    [self addChildViewController:[bViewController new] imageName:@"店铺-OFF" selectedImageName:@"店铺" title:@"店铺"];
    [self addChildViewController:[cViewController new] imageName:@"订单-OFF" selectedImageName:@"订单" title:@"订单"];
    [self addChildViewController:[dViewController new] imageName:@"卡券-OFF" selectedImageName:@"卡券" title:@"卡券"];
}
-(void)addChildViewController:(UIViewController *)viewController imageName:(NSString *)imageName selectedImageName:(NSString *)selectedImage title:(NSString *)title{
    viewController.tabBarItem.image = [UIImage imageNamed:imageName];
    viewController.tabBarItem.selectedImage = [UIImage imageNamed:selectedImage];
    viewController.title = title;

    MTNaviController *navi = [[MTNaviController alloc]initWithRootViewController:viewController];
    navi.navigationBar.shadowImage = [[UIImage alloc]init];
    navi.navigationBar.tintColor = [UIColor whiteColor];
    [navi.navigationBar setBackgroundImage:[Utils createImageWithColor:[UIColor cyanColor]] forBarMetrics:UIBarMetricsDefault];
    NSDictionary * dict = [NSDictionary dictionaryWithObject:[UIColor whiteColor] forKey:UITextAttributeTextColor];
    navi.navigationBar.titleTextAttributes = dict;
    [self addChildViewController:navi];

}
-(void)setControllers{
    [self addChildViewController:[aViewController new] imageName:@"产品管理-OFF" selectedImageName:@"产品管理" title:@"产品管理"];
    [self addChildViewController:[bViewController new] imageName:@"订单-OFF" selectedImageName:@"订单" title:@"订单"];
    [self addChildViewController:[cViewController new] imageName:@"店铺-OFF" selectedImageName:@"店铺" title:@"店铺"];
    [self addChildViewController:[dViewController new] imageName:@"卡券-OFF" selectedImageName:@"卡券" title:@"券码"];
}
-(void)addChildViewController:(UIViewController *)childController imageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName title:(NSString *)title{
    MTNaviController *navi = [[MTNaviController alloc]initWithRootViewController:childController];
    [navi.navigationBar setBackgroundImage:[Utils createImageWithColor:[UIColor colorWithRed:1.000 green:0.502 blue:0.000 alpha:1.000]] forBarMetrics:UIBarMetricsDefault];
    navi.navigationBar.tintColor = [UIColor whiteColor];
    navi.navigationBar.shadowImage = [[UIImage alloc]init];
    navi.navigationItem.title = title;
    childController.tabBarItem.image = [UIImage imageNamed:imageName];
    childController.tabBarItem.selectedImage = [UIImage imageNamed:selectedImageName];
    childController.tabBarItem.title = title;
    [self addChildViewController:navi];
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
