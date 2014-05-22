//
//  pointLayer.m
//  jjins
//
//  Created by mac on 13. 6. 15..
//  Copyright 2013년 __MyCompanyName__. All rights reserved.
//

#import "pointLayer.h"
#import "GameLayer2.h"
#import "SceneManager.h"

@implementation pointLayer

+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	pointLayer *layer = [pointLayer node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}

-(id) init
{
	if( (self=[super init]) )
    {        

        [self performSelector:@selector(game) withObject:nil afterDelay:0];

        
    }
    return self;
}
-(void)game
{
    
    [[CCDirector sharedDirector] replaceScene:[CCTransitionFade transitionWithDuration:1.0 scene:[GameLayer2 scene] withColor:ccWHITE]];
    
}

@end
