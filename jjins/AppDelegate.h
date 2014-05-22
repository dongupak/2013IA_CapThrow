//
//  AppDelegate.h
//  jjins
//
//  Created by 310 on 13. 5. 21..
//  Copyright __MyCompanyName__ 2013년. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "cocos2d.h"

@interface AppController : NSObject <UIApplicationDelegate, CCDirectorDelegate>
{
	UIWindow *window_;
	UINavigationController *navController_;

	CCDirectorIOS	*director_;							// weak ref
    NSInteger colaPoint;
    NSInteger ciderPoint;
    NSInteger hitePoint;
    NSInteger cassPoint;
    NSInteger count;
    NSInteger start;  
}

@property (nonatomic, retain) UIWindow *window;
@property (readonly) UINavigationController *navController;
@property (readonly) CCDirectorIOS *director;
@property (readwrite) NSInteger colaPoint;
@property (readwrite) NSInteger ciderPoint;
@property (readwrite) NSInteger hitePoint;
@property (readwrite) NSInteger cassPoint;
@property (readwrite) NSInteger count;
@property (readwrite) NSInteger start;



@end
