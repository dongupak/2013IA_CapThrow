//
//  HelloWorldLayer.h
//  jjins
//
//  Created by 310 on 13. 5. 21..
//  Copyright __MyCompanyName__ 2013년. All rights reserved.
//


#import <GameKit/GameKit.h>

// When you import this file, you import all the cocos2d classes
#import "cocos2d.h"
#import "SimpleAudioEngine.h"

// HelloWorldLayer
@interface MenuLayer : CCLayer <GKAchievementViewControllerDelegate, GKLeaderboardViewControllerDelegate>
{
    SimpleAudioEngine *backsound;

    CCMenuItem *startMenuItem;
    CCMenuItem *howtoMenuItem;
    CCMenuItem *creditMenuItem;
    
    CGSize size;
}
+(CCScene *) scene;

- (void) goCreditScene;
- (void) howtoMenuCallback;
- (void) newGameMenuCallback;
- (void) goRanking;

@end
