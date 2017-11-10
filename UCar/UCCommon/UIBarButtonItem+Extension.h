//
//  UINavigationItem+Extension.h
//  UCar
//
//  Created by Kevin_Whoo on 2017/11/10.
//  Copyright © 2017年 kindvoon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Extension)

+ (instancetype)itemWithBackgroundImage:(UIImage *)backgroundImage target:(id)target andAction:(SEL)action;

@end
