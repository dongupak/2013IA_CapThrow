//
//  RankLayer.h
//  jjins
//
//  Created by 310 on 13. 5. 21..
//  Copyright 2013년 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "SimpleAudioEngine.h"

@interface RankLayer : CCLayer {
    CGSize size;
    
    SimpleAudioEngine *backsound;
    
    CCSprite *gold;
    CCSprite *silver;
    CCSprite *bronze;
    CCSprite *ddong;
    CCSprite *cover;
    
    NSInteger gpoint;
    NSInteger spoint;
    NSInteger bpoint;
    NSInteger dpoint;
    
    NSInteger rankpoint[2][4];
    int num;
    
}
+(CCScene *) scene;
@end
