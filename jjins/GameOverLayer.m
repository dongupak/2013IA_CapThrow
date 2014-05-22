//
//  GameOverLayer.m
//  jjins
//
//  Created by 310 on 13. 5. 21..
//
//

#import "GameOverLayer.h"
#import "SceneManager.h"

@implementation GameOverLayer

+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	GameOverLayer *layer = [GameOverLayer node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}

@end
