//
//  FirstViewController.m
//  BaseFramework
//
//  Created by wendongsheng on 15/3/31.
//  Copyright (c) 2015年 wendongsheng. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()<UITextFieldDelegate>


@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor colorWithRed:arc4random()%256/255.0 green:arc4random()%256/255.0 blue:arc4random()%256/255.0 alpha:1];
    UITextField *text = [[UITextField alloc] initWithFrame:CGRectMake(10, SCREEN_HEIGHT-50-49, SCREEN_WIDTH-2*10, 30)];
    text.borderStyle =  UITextBorderStyleRoundedRect;
    [self.view addSubview:text];
    text.delegate = self;
    text.placeholder = @"请输入内容";
    
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField{
    CLog(@"这是测试数据");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
