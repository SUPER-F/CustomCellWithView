//
//  CustomView.h
//  CustomCellWithView
//
//  Created by wangning on 15/8/10.
//  Copyright (c) 2015年 IT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomView : UIView{
    
    //id     _delegate;
}


@property (nonatomic,assign)id delegate;

@end

@protocol CustomViewDelegate <NSObject>

-(void)viewButtonClick:(UIButton*)sender;

@end
