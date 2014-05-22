//
//  LoadLayer.m
//  jjins
//
//  Created by mac on 13. 5. 28..
//  Copyright 2013년 __MyCompanyName__. All rights reserved.
//

#import "LoadLayer.h"
#import "GameLayer2.h"
#import "SceneManager.h"
#import "MenuLayer.h"


@implementation LoadLayer
+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	LoadLayer *layer = [LoadLayer node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}

-(id) init
{
    if( (self=[super init]) ) {
        size = [[CCDirector sharedDirector] winSize];
        CCSprite *bgSprite = [CCSprite spriteWithFile:@"backgreen1.png"];
        bgSprite.anchorPoint = CGPointZero;
        [bgSprite setPosition: ccp(0, 0)];
        [self addChild:bgSprite z:0];
    
        CCSprite *player = [CCSprite spriteWithFile:@"1234p.png"];
        player.position = ccp(size.width /2, size.height /2);
        [self addChild:player];
    
        CCSprite *dot = [CCSprite spriteWithFile:@"dot1.png"];
        dot.position = ccp(250, 30);
        [self addChild:dot];
    
        CCAnimation *animation = [[CCAnimation alloc] init];
        
        [animation setDelayPerUnit:0.3];
        
        [animation addSpriteFrameWithFilename:@"dot2.png"];
        [animation addSpriteFrameWithFilename:@"dot3.png"];
        [animation addSpriteFrameWithFilename:@"dot1.png"];
        
        CCAnimate *animate =[CCAnimate actionWithAnimation:animation];
        animate = [CCRepeatForever actionWithAction:animate];
    
        [dot runAction:animate];
        
        
        return self;
    }
}
-(void) onEnter
{
	[super onEnter];
    
    // In one second transition to the new scene
	[self scheduleOnce:@selector(makeTransition:) delay:3];
}

-(void) makeTransition:(ccTime)dt
{
	[[CCDirector sharedDirector] replaceScene:[CCTransitionFade transitionWithDuration:1.0 scene:[GameLayer2 scene] withColor:ccWHITE]];
}


@end
