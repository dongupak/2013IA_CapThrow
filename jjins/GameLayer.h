//
//  GameLayer.h
//  jjins
//
//  Created by 310 on 13. 5. 21..
//
//

#import "AppDelegate.h"
#import "SimpleAudioEngine.h"

@interface GameLayer : CCLayer {
    CGSize size;
    
    SimpleAudioEngine *backsound;
    
    CCMenuItem *twoplayer;
    CCMenuItem *threeplayer;
    CCMenuItem *fourplayer;
    
    int count;
}
@property int count;

+(CCScene *) scene;
@end
