//
//  UINavigationItem+Extension.m
//  UCar
//
//  Created by Kevin_Whoo on 2017/11/10.
//  Copyright © 2017年 kindvoon. All rights reserved.
//

#import "UIBarButtonItem+Extension.h"

@implementation UIBarButtonItem (Extension)

+ (instancetype)itemWithBackgroundImage:(UIImage *)backgroundImage target:(id)target andAction:(SEL)action{

    //添加BarButtonItem
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setBackgroundImage:backgroundImage forState:UIControlStateNormal];
    btn.size = btn.currentBackgroundImage.size;
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return [[self alloc] initWithCustomView:btn];
}
@end
