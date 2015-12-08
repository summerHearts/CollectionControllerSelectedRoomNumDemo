//
//  TagBtn.m
//  CollectionControllerDemo
//
//  Created by 佐毅 on 15/11/24.
//  Copyright © 2015年 上海乐住信息技术有限公司. All rights reserved.
//

#import "TagBtn.h"

@implementation TagBtn

- (instancetype)init {
    return ([self initWithFrame:CGRectZero]);
}


- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.layer.cornerRadius= 16.0f;
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}
@end
