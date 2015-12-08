//
//  StarView.h
//  mike2.0
//
//  Created by 佐毅 on 15/4/20.
//  Copyright (c) 2015年 flychi. All rights reserved.
//

#import <UIKit/UIKit.h>
@class StarView;
@protocol StarDelegate <NSObject>
- (void)starView:(StarView *)starView selectIndex:(NSInteger)index;
@end

@interface StarView : UIView
@property (nonatomic,assign) id<StarDelegate>delegate;
@property (nonatomic,assign) NSString *title;
@property (nonatomic,strong) UILabel *resultTitleLabel;
@property (nonatomic,assign) int tags;
@property (nonatomic,assign) NSInteger  selectedIndex;

@property (nonatomic,strong)  NSMutableArray *arrays;
- (void)selectStare:(UIButton*)btn;

@end
