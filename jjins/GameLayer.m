//
//  GameLayer.m
//  jjins
//
//  Created by 310 on 13. 5. 21..
//
//

#import "GameLayer.h"
#import "SceneManager.h"


@implementation GameLayer

@synthesize count;

-(AppController *)delegate
{
    return (AppController *)[[UIApplication sharedApplication] delegate];
}

+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	GameLayer *layer = [GameLayer node];
	
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
        
        twoplayer = [CCMenuItemImage itemWithNormalImage:@"2인용.png" selectedImage:@"2인용.png" target:self selector:@selector(goLoad2)];
        
        threeplayer = [CCMenuItemImage itemWithNormalImage:@"3인용.png" selectedImage:@"3인용.png" target:self selector:@selector(goLoad3)];
        
        fourplayer = [CCMenuItemImage itemWithNormalImage:@"4인용.png" selectedImage:@"4인용.png" target:self selector:@selector(goLoad4)];
        
        CCMenuItem *back = [CCMenuItemImage itemWithNormalImage:@"back.png" selectedImage:@"back.png" target:self selector:@selector(goBack)];
        
        CCMenu *menu =[CCMenu menuWithItems:twoplayer,threeplayer,fourplayer,back, nil];
        [menu alignItemsVerticallyWithPadding:15];
        menu.position =ccp(size.width /2, size.height * 5/10);
        [self addChild:menu];
        return self;
    }
}

- (void) goBack
{
    [SceneManager goMenu];
}

- (void) goLoad2
{
    backsound = [SimpleAudioEngine sharedEngine];
    if(backsound != nil){
        [backsound preloadEffect:@"itemsound.mp3"];
        
        backsound.effectsVolume = 1.0f;
    }
    [backsound playEffect:@"itemsound.mp3"];
    
    AppController *delegate = [self delegate];
    delegate.count = 2;
    delegate.start = 0;

    [SceneManager goLoad];
}
- (void) goLoad3
{
    backsound = [SimpleAudioEngine sharedEngine];
    if(backsound != nil){
        [backsound preloadEffect:@"itemsound.mp3"];
        
        backsound.effectsVolume = 1.0f;
    }
    [backsound playEffect:@"itemsound.mp3"];
    
    AppController *delegate = [self delegate];
    delegate.count = 3;
    delegate.start = 0;

    [SceneManager goLoad];
}
- (void) goLoad4
{
    backsound = [SimpleAudioEngine sharedEngine];
    if(backsound != nil){
        [backsound preloadEffect:@"itemsound.mp3"];
        
        backsound.effectsVolume = 1.0f;
    }
    [backsound playEffect:@"itemsound.mp3"];
    
    AppController *delegate = [self delegate];
    delegate.count = 4;
    delegate.start = 0;

    [SceneManager goLoad];
}

@end