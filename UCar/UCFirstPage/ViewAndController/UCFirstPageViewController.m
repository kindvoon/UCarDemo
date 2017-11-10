//
//  UCFirstPageViewController.m
//  UCar
//
//  Created by Kevin_Whoo on 2017/10/25.
//  Copyright © 2017年 kindvoon. All rights reserved.
//

#import "UCFirstPageViewController.h"

@interface UCFirstPageViewController ()


@end

@implementation UCFirstPageViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self setUpNav];
    
}

- (void)setUpNav{
    
    self.navigationItem.title = @"U";
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithBackgroundImage:[UIImage imageNamed:@"homeLeftButtonImage"] target:self andAction:@selector(clickLeftBtn)];
    
}


- (void)clickLeftBtn{
    
    NSLog(@"123");
    
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
