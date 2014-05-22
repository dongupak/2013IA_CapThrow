//
//  GameLayer2.m
//  jjins
//
//  Created by mac on 13. 6. 2..
//  Copyright 2013년 __MyCompanyName__. All rights reserved.
//

#import "GameLayer2.h"
#import "SceneManager.h"
#import "TouchHandlingLayer.h"
#import "AppDelegate.h"

@implementation GameLayer2

-(AppController *)delegate
{
    return (AppController *)[[UIApplication sharedApplication] delegate];
}

+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	GameLayer2 *layer = [GameLayer2 node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}
-(id) init
{
	if( (self=[super init]) ) {
        
        
        self.isTouchEnabled = YES;                
        
		size = [[CCDirector sharedDirector] winSize];
        CCSprite *bgSprite = [CCSprite spriteWithFile:@"backgreen1.png"];
        bgSprite.anchorPoint = CGPointZero;
        [bgSprite setPosition: ccp(0, 0)];
        [self addChild:bgSprite z:0];
        
        
        backsound = [SimpleAudioEngine sharedEngine];
        [backsound preloadBackgroundMusic:@"gamesound.mp3"];
        if(backsound.willPlayBackgroundMusic)
        {
            backsound.backgroundMusicVolume = 0.5f;
        }
        [backsound playBackgroundMusic:@"gamesound.mp3" loop:YES];
        
        top = [CCSprite spriteWithFile:@"score.png"];
        [top setPosition:ccp(size.width * 1/2, 455)];
        [self addChild:top z:50];
        
        table = [CCSprite spriteWithFile:@"table.png"];
        [table setPosition:ccp(size.width * 1/2, 185)];
        [self addChild:table z:50];
        
        [self pointcheck];
        
        [self gamestart];
        
    }
    
    return self;
    
}
-(void)gamestart
{
    AppController *delegate = [self delegate];
    delegate.start++;

    switch (delegate.start) {
        case 1:
            cover = [CCSprite spriteWithFile:@"cola.png"];
            [cover setPosition:ccp(size.width * 1/2, size.height * 1/17)];
            [self addChild:cover z:100];
            break;
            
        case 2:
            cover = [CCSprite spriteWithFile:@"cider.png"];
            [cover setPosition:ccp(size.width * 1/2, size.height * 1/17)];
            [self addChild:cover z:100];
            break;
            
        case 3:
            cover = [CCSprite spriteWithFile:@"hite.png"];
            [cover setPosition:ccp(size.width * 1/2, size.height * 1/17)];
            [self addChild:cover z:100];
            break;
            
        case 4:
            cover = [CCSprite spriteWithFile:@"cass.png"];
            [cover setPosition:ccp(size.width * 1/2, size.height * 1/17)];
            [self addChild:cover z:100];
            break;
    }
    
}
-(void)pointcheck
{
    AppController *delegate = [self delegate];
    if(delegate.colaPoint > 0){
        NSString *tmp = [[NSString alloc] initWithFormat:@"%d",delegate.colaPoint];
        
        CCLabelTTF *re = [CCLabelTTF labelWithString:tmp fontName:@"Marker Felt" fontSize:18];
        [re setPosition:ccp(45, 455)];
        [self addChild:re z:100];
        
    }
    if(delegate.ciderPoint > 0){
        NSString *tmp = [[NSString alloc] initWithFormat:@"%d",delegate.ciderPoint];
        
        CCLabelTTF *re = [CCLabelTTF labelWithString:tmp fontName:@"Marker Felt" fontSize:18];
        [re setPosition:ccp(125, 455)];
        [self addChild:re z:100];
        
    }
    if(delegate.hitePoint > 0){
        NSString *tmp = [[NSString alloc] initWithFormat:@"%d",delegate.hitePoint];
        
        CCLabelTTF *re = [CCLabelTTF labelWithString:tmp fontName:@"Marker Felt" fontSize:18];
        [re setPosition:ccp(205, 455)];
        [self addChild:re z:100];
        
    }
    if(delegate.cassPoint > 0){
        NSString *tmp = [[NSString alloc] initWithFormat:@"%d",delegate.cassPoint];
        
        CCLabelTTF *re = [CCLabelTTF labelWithString:tmp fontName:@"Marker Felt" fontSize:18];
        [re setPosition:ccp(285, 455)];
        [self addChild:re z:100];
        
    }
    
}
-(void)endgame
{
    int result;
    result = cover.position.y;
    if(result < 360){
        
        AppController *delegate = [self delegate];
        
        switch (delegate.start) {
            case 1:
                delegate.colaPoint = result;
                break;
            
            case 2:
                delegate.ciderPoint = result;
                break;
            
            case 3:
                delegate.hitePoint = result;
                break;
                
            case 4:
                delegate.cassPoint = result;
                break;
        }
        NSString *tmp = [[NSString alloc] initWithFormat:@"%d",result];
        
        CCLabelTTF *re = [CCLabelTTF labelWithString:tmp fontName:@"Marker Felt" fontSize:150];
        [re setPosition:ccp(size.width * 1/2, size.height * 1/2)];
        [self addChild:re z:100];
        [self performSelector:@selector(restart) withObject:nil afterDelay:2];
    }
    else{
        result = 0;
        CCSprite *fail;
        fail = [CCSprite spriteWithFile:@"goddaem1.png"];
        [fail setPosition:ccp(size.width * 1/2, size.height * 1/2)];
        [self addChild:fail z:100];
        [self performSelector:@selector(restart) withObject:nil afterDelay:2];
    }
    
}
-(void)restart
{
    AppController *delegate = [self delegate];
    if(delegate.count != delegate.start){
        [[CCDirector sharedDirector] replaceScene:[CCTransitionFade transitionWithDuration:1.0 scene:[GameLayer2 scene] withColor:ccWHITE]];
    }
    else{
        [SceneManager goRank];
    }

}
-(void)ccTouchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    istouch = NO;

    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInView:[touch view]];
    CGPoint convertdeLoction = [[CCDirector sharedDirector]convertToGL:location];
    
    if(CGRectContainsPoint(cover.boundingBox, convertdeLoction))
    {
        istouch = YES;
        time = 0;
        start = convertdeLoction.y;
    }
}
-(void)ccTouchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    if(istouch == YES){
        time += 1;
    }
}
-(void)ccTouchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    self.isTouchEnabled = NO;
    
    backsound = [SimpleAudioEngine sharedEngine];
    if(backsound != nil){
        [backsound preloadEffect:@"coversound.mp3"];
        
        backsound.effectsVolume = 1.5f;
    }
    [backsound playEffect:@"coversound.mp3"];
    
    if(istouch == YES){
        UITouch *touch = [touches anyObject];
        CGPoint location = [touch locationInView:[touch view]];
        CGPoint convertdeLoction = [[CCDirector sharedDirector]convertToGL:location];
        end = convertdeLoction.y;
        int result = end-start;
        int dis;
        
        dis = result/time*20;
        
        [cover runAction:[CCMoveTo actionWithDuration:1 position:ccp(cover.position.x, cover.position.y+dis)]];
        [self performSelector:@selector(endgame) withObject:nil afterDelay:2];
    }
}

@end
