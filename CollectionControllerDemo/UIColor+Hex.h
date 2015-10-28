//
//  UIColor+Hex.h
//  mike
//
//  Created by saico on 15/3/4.
//  Copyright (c) 2015年 lezhu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface UIColor (Hex)
//十六进制颜色
+ (UIColor *) colorWithHexString: (NSString *)color;

//颜色转图片
+ (UIImage *)toImage:(UIColor *)color;

//颜色转图片
- (UIImage *)toImage;

@end
