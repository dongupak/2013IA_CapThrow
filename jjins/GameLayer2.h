//
//  GameLayer2.h
//  jjins
//
//  Created by mac on 13. 6. 2..
//  Copyright 2013년 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TouchHandlingLayer.h"
#import "cocos2d.h"
#import "SimpleAudioEngine.h"

@class GameLayer;

enum{
    kTagtouch,
};

@interface GameLayer2 : CCLayer {
    CGSize size;
    
    SimpleAudioEngine *backsound;
    
    CCSprite *cover;
    CCSprite *table;
    CCSprite *top;
    
    int time;
    int start;
    int end;
    int point;
    
    TouchHandlingLayer *touch;
    GameLayer *game;
    
    BOOL istouch;
}

@property int point;

+(CCScene *) scene;

@end
