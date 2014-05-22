//
//  HelloWorldLayer.m
//  jjins
//
//  Created by 310 on 13. 5. 21..
//  Copyright __MyCompanyName__ 2013년. All rights reserved.
//


// Import the interfaces
#import "MenuLayer.h"
#import "SceneManager.h"

// Needed to obtain the Navigation Controller
#import "AppDelegate.h"

#pragma mark - MenuLayer

// HelloWorldLayer implementation
@implementation MenuLayer


// Helper class method that creates a Scene with the HelloWorldLayer as the only child.

+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	MenuLayer *layer = [MenuLayer node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}

// on "init" you need to initialize your instance
-(id) init
{
	if( (self=[super init]) ) {
		size = [[CCDirector sharedDirector] winSize];
        CCSprite *bgSprite = [CCSprite spriteWithFile:@"background.png"];
        bgSprite.anchorPoint = CGPointZero;
        [bgSprite setPosition: ccp(0, 0)];
        [self addChild:bgSprite z:0];
        backsound = [SimpleAudioEngine sharedEngine];
        [backsound preloadBackgroundMusic:@"menuitem.mp3"];
        if(backsound.willPlayBackgroundMusic)
        {
            backsound.backgroundMusicVolume = 0.5f;
        }
        [backsound playBackgroundMusic:@"menuitem.mp3" loop:YES];
    
        CCSprite *cola =[CCSprite spriteWithFile:@"colamv.png"];
        [cola setPosition:ccp(600, 360)];
        [self addChild:cola];
        id colamv = [CCMoveBy actionWithDuration:3 position:ccp(-750, 0)];
        id rvcola = [CCPlace actionWithPosition:ccp(600, 360)];
        id totalcola = [CCSequence actions:colamv,rvcola, nil];
        id repcola = [CCRepeatForever actionWithAction:totalcola];
        [cola runAction:repcola];
        
        CCSprite *cider =[CCSprite spriteWithFile:@"cidermv.png"];
        [cider setPosition:ccp(-130, 90)];
        [self addChild:cider];
        id cidermv = [CCMoveBy actionWithDuration:2.5 position:ccp(550, 0)];
        id rvcider = [CCPlace actionWithPosition:ccp(-130, 90)];
        id totalcider = [CCSequence actions:cidermv,rvcider, nil];
        id repcider = [CCRepeatForever actionWithAction:totalcider];
        [cider runAction:repcider];
        
        CCSprite *cass =[CCSprite spriteWithFile:@"cassmv.png"];
        [cass setPosition:ccp(50, -100)];
        [self addChild:cass];
        id cassmv = [CCMoveBy actionWithDuration:3.5 position:ccp(0, 700)];
        id rvcass = [CCPlace actionWithPosition:ccp(50, -100)];
        id totalcass = [CCSequence actions:cassmv,rvcass, nil];
        id repcass = [CCRepeatForever actionWithAction:totalcass];
        [cass runAction:repcass];
        
        CCSprite *hite =[CCSprite spriteWithFile:@"hitemv.png"];
        [hite setPosition:ccp(280, 600)];
        [self addChild:hite];
        id hitemv = [CCMoveBy actionWithDuration:3 position:ccp(0, -700)];
        id rvhite = [CCPlace actionWithPosition:ccp(280, 600)];
        id totalhite = [CCSequence actions:hitemv,rvhite, nil];
        id rephite = [CCRepeatForever actionWithAction:totalhite];
        [hite runAction:rephite];
        
        
        CCSprite *title =[CCSprite spriteWithFile:@"dduku.png"];
        [title setPosition:ccp(170, size.height * 4/5)];
        [self addChild:title z:100];
        
        CCSprite *title2 =[CCSprite spriteWithFile:@"byeong.png"];
        [title2 setPosition:ccp(50, 550)];
        [self addChild:title2 z:200];
        id titledown = [CCMoveBy actionWithDuration:1 position:ccp(0, -120)];
        id titleright = [CCRotateTo actionWithDuration:0.5 angle:15];
        id titleleft = [CCRotateTo actionWithDuration:0.5 angle:-15];
        id titrl = [CCSequence actions:titleright,titleleft, nil];
        id titrp = [CCRepeat actionWithAction:titrl times:100];
        id titresult = [CCSequence actions:titledown,titrp, nil];
        [title2 runAction:titresult];

        
        startMenuItem = [CCMenuItemImage itemWithNormalImage:@"gamestart.png" selectedImage:@"gamestart2.png" target:self selector:@selector(newGameMenuCallback)];
        
        howtoMenuItem = [CCMenuItemImage itemWithNormalImage:@"howto.png" selectedImage:@"howto2.png" target:self selector:@selector(howtoMenuCallback)];
        
        creditMenuItem = [CCMenuItemImage itemWithNormalImage:@"credit.png" selectedImage:@"credit2.png" target:self selector:@selector(goCreditScene)];
        
        CCMenu *menu =[CCMenu menuWithItems:startMenuItem,howtoMenuItem,creditMenuItem, nil];
        [menu alignItemsVerticallyWithPadding:20];
        menu.position =ccp(size.width /2, size.height * 3/10);
        [self addChild:menu];
	return self;
    }
    // Credit Scene으로 이동
}

- (void) goCreditScene
{
    backsound = [SimpleAudioEngine sharedEngine];
    if(backsound != nil){
        [backsound preloadEffect:@"itemsound.mp3"];
        
        backsound.effectsVolume = 1.0f;
    }
    [backsound playEffect:@"itemsound.mp3"];
    [SceneManager goCredit];
}

- (void) howtoMenuCallback
{
    backsound = [SimpleAudioEngine sharedEngine];
    if(backsound != nil){
        [backsound preloadEffect:@"itemsound.mp3"];
        
        backsound.effectsVolume = 1.0f;
    }
    [backsound playEffect:@"itemsound.mp3"];
    [SceneManager goHowto];
}

// 메뉴 아이템(버튼)을 만들 때 이벤트 핸들러로 등록된 메소드를 만듭니다.
- (void) newGameMenuCallback
{
    backsound = [SimpleAudioEngine sharedEngine];
    if(backsound != nil){
        [backsound preloadEffect:@"itemsound.mp3"];
        
        backsound.effectsVolume = 1.0f;
    }
    [backsound playEffect:@"itemsound.mp3"];
    [backsound stopBackgroundMusic];
    [SceneManager goGame];
}

@end
