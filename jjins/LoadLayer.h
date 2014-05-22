//
//  LoadLayer.h
//  jjins
//
//  Created by mac on 13. 5. 28..
//  Copyright 2013년 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"

@class GameLayer2;

@interface LoadLayer : CCLayer {
    CGSize size;
    CCMenuItem *twoplayer;
    CCMenuItem *threeplayer;
    CCMenuItem *fourplayer;
    GameLayer2 *game;
    
}
+(CCScene *) scene;

@end
