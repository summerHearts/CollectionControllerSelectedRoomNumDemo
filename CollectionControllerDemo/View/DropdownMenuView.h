//
//  DropdownMenuView.h
//  Mike
//
//  Created by 佐毅 on 15/10/22.
//  Copyright © 2015年 上海乐住信息技术有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DropdownMenuView : UIView

// cell color default greenColor
@property (nonatomic, strong) UIColor *cellColor;

// cell seprator color default whiteColor
@property (nonatomic, strong) UIColor *cellSeparatorColor;

// cell height default 44
@property (nonatomic, assign) CGFloat cellHeight;

// animation duration default 0.4
@property (nonatomic, assign) CGFloat animationDuration;

// text color default whiteColor
@property (nonatomic, strong) UIColor *textColor;

// text font default system 17

@property (nonatomic, strong) UIFont *textFont;

// background opacity default 0.3
@property (nonatomic, assign) CGFloat backgroundAlpha;

// callback block
@property (nonatomic, copy) void (^selectedAtIndex)(int index);

- (instancetype)initWithFrame:(CGRect)frame titles:(NSArray*)titles;

@end
