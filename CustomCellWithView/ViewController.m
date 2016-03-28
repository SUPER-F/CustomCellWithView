//
//  ViewController.m
//  CustomCellWithView
//
//  Created by wangning on 15/8/10.
//  Copyright (c) 2015年 IT. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UITableView *table = [[UITableView alloc]init];
    table.frame = CGRectMake(0, 0, 320, 568);
    [self.view addSubview:table];
    table.delegate = self;
    table.dataSource = self;
    [table release];

}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 20;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *identifier = @"cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        
    }
    
    UIView *bgView = [cell viewWithTag:1000];
    if (bgView) {
        
        [bgView removeFromSuperview];
    }
    
    CustomView *view = [[CustomView alloc]init];
    
    //view.frame = CGRectMake(0, 0, 320, 50);
    
    view.delegate = self;
    
    
    [cell addSubview:view];
    [view release];
    
    return cell;
}
-(void)viewButtonClick:(UIButton *)sender{
    
    NSLog(@"代理方法点击了");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
