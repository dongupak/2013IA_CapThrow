//
//  TouchHandlingLayer.h
//  jjins
//
//  Created by mac on 13. 6. 2..
//  Copyright 2013년 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@class GameLayer2;

@interface TouchHandlingLayer : CCLayer
{
    GameLayer2 *game;
    
    BOOL inTouch;
    
}
@property (nonatomic, retain) GameLayer2 *game;

+(CCScene *) scene;

@end
