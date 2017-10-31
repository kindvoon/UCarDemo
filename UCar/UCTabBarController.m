//
//  UCTabBarController.m
//  UCar
//
//  Created by Kevin_Whoo on 2017/10/25.
//  Copyright © 2017年 kindvoon. All rights reserved.
//

#import "UCTabBarController.h"
#import "UCFirstPageViewController.h"
#import "UCMapViewController.h"
#import "UCMineViewController.h"
#import "UCBatteryViewController.h"
#import "UCNavigationController.h"

@interface UCTabBarController ()

@end

@implementation UCTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
   
    //添加子控制器
    [self addChildVcWithViewController:[[UCFirstPageViewController alloc] init]  title:@"首页" unSelectImage:[UIImage imageNamed:@"homeTabarNoSelect"] andSelectImage:[UIImage imageNamed:@"homeTabarSelect"]];
    
    [self addChildVcWithViewController:[[UCMapViewController alloc] init]  title:@"地图" unSelectImage:[UIImage imageNamed:@"mapTabarNoSelect"] andSelectImage:[UIImage imageNamed:@"mapTabarSelect"]];
    
    
    [self addChildVcWithViewController:[[UCBatteryViewController alloc] init] title:@"电池" unSelectImage:[UIImage imageNamed:@"batteryTabarNoSelect"] andSelectImage:[UIImage imageNamed:@"batteryTabarSelect"]];
    
    [self addChildVcWithViewController:[[UCMineViewController alloc] init] title:@"我的" unSelectImage:[UIImage imageNamed:@"mineTabarNoSelect"] andSelectImage:[UIImage imageNamed:@"mineTabarSelect"]];
}

#pragma mark -添加子控制器
- (void)addChildVcWithViewController:(UIViewController *)viewController  title:(NSString *)title unSelectImage:(UIImage *)unSelectImage andSelectImage:(UIImage *)selectImage
{
    viewController.tabBarItem.title = title;
    viewController.tabBarItem.image = [unSelectImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    viewController.tabBarItem.selectedImage = [selectImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    UCNavigationController *nav = [[UCNavigationController alloc] initWithRootViewController:viewController];
 
    
    [self addChildViewController:nav];
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
