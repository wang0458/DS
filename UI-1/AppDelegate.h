//
//  AppDelegate.h
//  UI-1
//
//  Created by Ibokan on 12-8-10.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MyViewController;
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (nonatomic,strong) UIWindow *window;

@property (nonatomic,retain) MyViewController *myVC;
@end
