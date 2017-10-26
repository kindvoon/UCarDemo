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

@interface UCTabBarController ()

@end

@implementation UCTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
   
    //添加子控制器
    [self addChildVcWithViewController:[[UCFirstPageViewController alloc] init] backgroundColor:[UIColor redColor] title:@"shouye" unSelectImage:[UIImage imageNamed:@"homeTabarNoSelect"] andSelectImage:[UIImage imageNamed:@"homeTabarSelect"]];
    
    [self addChildVcWithViewController:[[UCMapViewController alloc] init] backgroundColor:[UIColor blueColor] title:@"map" unSelectImage:[UIImage imageNamed:@"mapTabarNoSelect"] andSelectImage:[UIImage imageNamed:@"mapTabarSelect"]];
    
    [self addChildVcWithViewController:[[UCMineViewController alloc] init] backgroundColor:[UIColor blueColor] title:@"mine" unSelectImage:[UIImage imageNamed:@"homeTabarNoSelect"] andSelectImage:[UIImage imageNamed:@"homeTabarSelect"]];
    
    [self addChildVcWithViewController:[[UCBatteryViewController alloc] init] backgroundColor:[UIColor blueColor] title:@"Battery" unSelectImage:[UIImage imageNamed:@"homeTabarNoSelect"] andSelectImage:[UIImage imageNamed:@"homeTabarSelect"]];
}

#pragma mark -添加子控制器
- (void)addChildVcWithViewController:(UIViewController *)viewController backgroundColor:(UIColor *)color title:(NSString *)title unSelectImage:(UIImage *)unSelectImage andSelectImage:(UIImage *)selectImage
{
    viewController.view.backgroundColor = color;
    viewController.tabBarItem.title = title;
    viewController.tabBarItem.image = [[UIImage imageNamed:@"homeTabarNoSelect"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    viewController.tabBarItem.selectedImage = [[UIImage imageNamed:@"homeTabarSelect"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [self addChildViewController:viewController];
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
