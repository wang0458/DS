//
//  MyViewController.h
//  UI-1
//
//  Created by Ibokan on 12-8-10.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyViewController : UIViewController
@property(nonatomic,retain)UITextField *num1TextFiled;
@property(nonatomic,retain)UITextField *num2TextFiled;

@property(nonatomic,retain)UILabel *plusLabel;
@property(nonatomic,retain)UILabel *equalLabel;
@property(nonatomic,retain)UILabel *resultLabel;

@property(nonatomic,retain)UIButton *calButton;

@end
