//
//  MyViewController.m
//  UI-1
//
//  Created by Ibokan on 12-8-10.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "MyViewController.h"

@implementation MyViewController
@synthesize num1TextFiled=_num1TextFiled;
@synthesize plusLabel=_plusLabel,equalLabel=_equalLabel,num2TextFiled=_num2TextFiled,resultLabel=_resultLabel,calButton=_calButton;
-(void)viewDidLoad
{
    [super viewDidLoad];
    
    UITextField *num1Temp=[[UITextField alloc]initWithFrame:CGRectMake(10, 50, 80, 40)];//生成文本域
    //设置边框的样式
    
    num1Temp.borderStyle=UITextBorderStyleRoundedRect;
    [num1Temp setContentVerticalAlignment:UIControlContentVerticalAlignmentCenter];//居中
    num1Temp.keyboardType=UIKeyboardTypeNumberPad;//设置键盘类型
    self.num1TextFiled=num1Temp;
    [num1Temp release];
    [self.view addSubview:self.num1TextFiled];//self.view指的是当前视图
//    _num1TextFiled=[[UITextField alloc]initWithFrame:CGRectMake(10, 50, 80, 40)];
    
// 或者   self.num1TextFiled=[[[UITextField alloc]initWithFrame:CGRectMake(10, 50, 80, 40)]autorelease];
//    
    UILabel *plusTemp=[[UILabel alloc]initWithFrame:CGRectMake(90, 50, 40, 40)];//LABEL对象
    plusTemp.text=@"+";//标签所陈列的值
    
    [plusTemp setBackgroundColor:[UIColor yellowColor]];
    plusTemp.textAlignment=UITextAlignmentCenter;//标签的居中方法//Alignment校准
    
    
    self.plusLabel=plusTemp;
    [plusTemp release];
    [self.view addSubview:self.plusLabel];
    
    UITextField *num2Temp=[[UITextField alloc]initWithFrame:CGRectMake(130, 50, 80, 40)];//生成文本域
    //设置边框的样式
    num2Temp.borderStyle=UITextBorderStyleRoundedRect;
    [num2Temp setContentVerticalAlignment:UIControlContentVerticalAlignmentCenter];//居中
    num2Temp.keyboardType=UIKeyboardTypeNumberPad;//设置键盘
    self.num2TextFiled=num2Temp;
    [num2Temp release];
    [self.view addSubview:self.num2TextFiled];
    
    UILabel *equalTemp=[[UILabel alloc]initWithFrame:CGRectMake(210, 50, 40, 40)];//LABEL对象
    equalTemp.text=@"=";
    [equalTemp setBackgroundColor:[UIColor redColor]];
    equalTemp.textAlignment=UITextAlignmentCenter;//标签内容居中
    self.equalLabel=equalTemp;
    [equalTemp release];
    [self.view addSubview:self.equalLabel];
    
    UILabel *resultTemp=[[UILabel alloc]initWithFrame:CGRectMake(250, 40, 60, 40)];
//    UILabel *resultTemp=[[UILabel alloc]init];
//    resultTemp.frame=CGRectMake(250, 40, 60, 40);//另一种初始化方式
    [resultTemp setBackgroundColor:[UIColor greenColor] ];
    resultTemp.textAlignment=UITextAlignmentCenter;
        self.resultLabel=resultTemp;
    [resultTemp release];
    [self .view addSubview:self.resultLabel];
    
    UIButton *calTemp=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [calTemp setTitle:@"计算" forState:UIControlStateNormal];
    [calTemp setTitle:@"选中" forState:UIControlStateHighlighted];
    calTemp.frame=CGRectMake(100, 100, 80, 40);
    
    [calTemp addTarget:self action:@selector(doCal) forControlEvents:UIControlEventTouchUpInside];
    
        
    self.calButton=calTemp;
    [calTemp release];
    [self.view addSubview:self.calButton];

    
}

-(void)doCal
{
    
    float num1=[self.num1TextFiled.text floatValue];
    float num2=[self.num1TextFiled.text floatValue];
    float result=num1+num2;
    NSString *str=[[NSString alloc]initWithFormat:@"%f",result];
    self.resultLabel.text=str;//给标签result赋值
    [str release];
    
}

-(void)dealloc
{ [_plusLabel release];
     [_equalLabel release];
     [_num2TextFiled release];
     [_resultLabel release];
     
     [_calButton release];

    [_num1TextFiled release];
    [super dealloc];
}


-(void)viewDidUnload
{
    
    
    
}



@end
