//
//  pointLayer.h
//  jjins
//
//  Created by mac on 13. 6. 15..
//  Copyright 2013년 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@class GameLayer2;

@interface pointLayer : CCLayer
{
    GameLayer2 *game;
}

+(CCScene *) scene;
@end
