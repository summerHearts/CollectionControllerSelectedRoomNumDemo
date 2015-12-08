//
//  StarView.m
//  mike2.0
//
//  Created by 佐毅 on 15/4/20.
//  Copyright (c) 2015年 flychi. All rights reserved.
//
#define IPHONE_SCREEN_WIDTH         ([[UIScreen mainScreen] bounds].size.width)
#define IPHONE_SCREEN_HEIGHT        ([[UIScreen mainScreen] bounds].size.height)
#define iPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) : NO)
#define iPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)
#define iPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) : NO)
#define iPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) : NO)
#define isPad (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)

#import "StarView.h"
static NSInteger SELECT = 0;
@implementation StarView
{
    BOOL           isRise;
    UILabel        *titleLab;
    UILabel        *resultLab;
    NSMutableArray *dataArray;
}
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        self.arrays = [[NSMutableArray alloc] init];
        isRise = YES;
        
        titleLab = [[UILabel alloc] initWithFrame:CGRectMake(20, 10,110, 20)];
        titleLab.backgroundColor = [UIColor clearColor];
        titleLab.textColor = [UIColor grayColor];
        titleLab.font = [UIFont fontWithName:@"Helvetica Neue" size:15];
        [self addSubview:titleLab];
        
        _resultTitleLabel= [[UILabel alloc] initWithFrame:CGRectMake(IPHONE_SCREEN_WIDTH-70, 10,60 , 20)];
        _resultTitleLabel.backgroundColor = [UIColor clearColor];
        _resultTitleLabel.font = [UIFont fontWithName:@"Helvetica Neue" size:15];
        _resultTitleLabel.textColor = [UIColor grayColor];
        _resultTitleLabel.textAlignment = NSTextAlignmentRight;
        [self addSubview:_resultTitleLabel];

        UIButton *btn ;
        for (int i = 0; i < 5; i++){
            if (iPhone5) {
                btn = [[UIButton alloc] initWithFrame:CGRectMake((IPHONE_SCREEN_WIDTH/2-20)+28*i, 10, 20, 20)];

            }else{
                btn = [[UIButton alloc] initWithFrame:CGRectMake((IPHONE_SCREEN_WIDTH/2-20)+33*i, 10, 20, 20)];
            }
            [btn setBackgroundImage:[UIImage imageNamed:@"huixingxing"]
                           forState:UIControlStateNormal];
            
            [btn setBackgroundImage:[UIImage imageNamed:@"xingxing-1"]
                           forState:UIControlStateHighlighted];
            
            [btn setBackgroundImage:[UIImage imageNamed:@"xingxing-1"] forState:UIControlStateSelected];
            
            [btn addTarget:self action:@selector(selectStare:) forControlEvents:UIControlEventTouchUpInside];
            
            btn.tag = 100 + i;
            [self addSubview:btn];
            [self.arrays addObject:btn];
        }
        [self selectStare:btn];
    }
    return self;
}
- (void)setTitle:(NSString *)title
{
    titleLab.text = title;
}

- (void)selectStare:(UIButton*)btn
{
    NSInteger index = btn.tag - 100;
    
    if(!btn.selected)
    {
        for (int i = 0; i < self.arrays.count; i ++)
        {
            UIButton *button = (UIButton*)self.arrays[i];
            if (i <= index)
            {
                SELECT = index;
                
                button.selected = YES;
            }
            else
            {
                button.selected = NO;
            }
        }
    }
    else
    {
        for (int i = 0; i < self.arrays.count; i ++)
        {
            UIButton *button = (UIButton*)self.arrays[i];
            if (i < index)
            {
                SELECT = index-1;
                button.selected = YES;
            }
            else
            {
                SELECT = index-1;
                button.selected = NO;
            }
        }
    }
    if (_delegate&&[_delegate respondsToSelector:@selector(starView:selectIndex:)])
    {
        [_delegate starView:self  selectIndex:SELECT+1];
    }
    self.selectedIndex = SELECT;
}

@end
