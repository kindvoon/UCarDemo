//
//  UIView+Extension.m
//  UCar
//
//  Created by Kevin_Whoo on 2017/11/10.
//  Copyright © 2017年 kindvoon. All rights reserved.
//

#import "UIView+Extension.h"

@implementation UIView (Extension)

- (void)setSize:(CGSize)size{

    CGRect frame = self.frame;
    
    frame.size = size;
    
    self.frame = frame;

}

- (CGSize)size{

    return self.frame.size;

}




@end
