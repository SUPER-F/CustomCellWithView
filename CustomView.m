//
//  CustomView.m
//  CustomCellWithView
//
//  Created by wangning on 15/8/10.
//  Copyright (c) 2015年 IT. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

-(id)init{
    
    self = [super init];
    if (self) {
        self.frame = CGRectMake(0, 0, 320, 50);
        self.tag = 1000;
       // UIToolbar
        UIButton *cellButton = [UIButton buttonWithType:UIButtonTypeCustom];
        cellButton.frame = CGRectMake(0, 0, 100, 50);
        cellButton.backgroundColor = [UIColor redColor];
        [cellButton addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
        
        
        [cellButton setTitle:@"你好" forState:UIControlStateNormal];
        [self addSubview:cellButton];
        
        
        UITextField * text = [[UITextField alloc]initWithFrame:CGRectMake(180, 0, 80, 50)];
        
        
        text.text = @"世界";
        
        //text.backgroundColor = [UIColor blueColor];
        
        [self addSubview:text];
        
        
    }
    return self;
}

-(void)buttonClick:(UIButton*)sender{
    NSLog(@"button点击方法");
    
    if ([self.delegate respondsToSelector:@selector(viewButtonClick:)]) {
        [self.delegate viewButtonClick:sender];
    }
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
