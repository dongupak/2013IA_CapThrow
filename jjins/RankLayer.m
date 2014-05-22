//
//  RankLayer.m
//  jjins
//
//  Created by 310 on 13. 5. 21..
//  Copyright 2013년 __MyCompanyName__. All rights reserved.
//

#import "RankLayer.h"
#import "SceneManager.h"
#import "AppDelegate.h"


@implementation RankLayer

-(AppController *)delegate
{
    return (AppController *)[[UIApplication sharedApplication] delegate];
}

+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	RankLayer *layer = [RankLayer node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}

-(id) init
{
	if( (self=[super init]) )
    {
        size = [[CCDirector sharedDirector] winSize];
        
        [self rank];
        
        
        backsound = [SimpleAudioEngine sharedEngine];
        [backsound preloadBackgroundMusic:@"gamesound.mp3"];
        if(backsound.willPlayBackgroundMusic)
        {
            backsound.backgroundMusicVolume = 0.5f;
        }
        [backsound playBackgroundMusic:@"gamesound.mp3" loop:YES];
        
        CCMenuItem *back = [CCMenuItemImage itemWithNormalImage:@"restart1.png" selectedImage:@"restart21.png" target:self selector:@selector(goBack)];
        CCMenu *menu = [CCMenu menuWithItems:back, nil];
        menu.position = ccp(160, 50);
        [self addChild:menu];
                
        
        
        [self ranking];
    }
    return self;
}
-(void) rankingg
{
    switch (num) {
        case 1:
            cover = [CCSprite spriteWithFile:@"cola.png"];
            break;
            
        case 2:
            cover = [CCSprite spriteWithFile:@"cider.png"];
            break;
            
        case 3:
            cover = [CCSprite spriteWithFile:@"hite.png"];
            break;
            
        case 4:
            cover = [CCSprite spriteWithFile:@"cass.png"];
            break;
    }
    
}
-(void) ranking
{
    AppController *delegate = [self delegate];
    
    int i,j,imsi,n;
    for(i=0;i<delegate.count;i++){
        for(j=i;j<delegate.count;j++){
            if(rankpoint[0][i] < rankpoint[0][j]){
                imsi = rankpoint[0][i];
                n = rankpoint[1][i];
                rankpoint[0][i] = rankpoint[0][j];
                rankpoint[1][i] = rankpoint[1][j];
                rankpoint[0][j] = imsi;
                rankpoint[1][j] = n;
            }
        }
    }
    if(delegate.count == 2){
        NSString *tmp = [[NSString alloc] initWithFormat:@"%d",rankpoint[0][0]];
        CCLabelTTF *re = [CCLabelTTF labelWithString:tmp fontName:@"Marker Felt" fontSize:60];
        [re setPosition:ccp(180, 320)];
        [self addChild:re z:100];
        num = rankpoint[1][0];
        [self rankingg];        
        [cover setPosition:ccp(300, 320)];
        [self addChild:cover z:100];
        
        NSString *tmp1 = [[NSString alloc] initWithFormat:@"%d",rankpoint[0][1]];
        CCLabelTTF *re1 = [CCLabelTTF labelWithString:tmp1 fontName:@"Marker Felt" fontSize:60];
        [re1 setPosition:ccp(180, 165)];
        [self addChild:re1 z:100];
        num = rankpoint[1][1];
        [self rankingg];
        [cover setPosition:ccp(300, 165)];
        [self addChild:cover z:100];
        
    }
    else if(delegate.count == 3){
        NSString *tmp = [[NSString alloc] initWithFormat:@"%d",rankpoint[0][0]];
        CCLabelTTF *re = [CCLabelTTF labelWithString:tmp fontName:@"Marker Felt" fontSize:60];
        [re setPosition:ccp(180, 390)];
        [self addChild:re z:100];
        num = rankpoint[1][0];
        [self rankingg];
        [cover setPosition:ccp(300, 390)];
        [self addChild:cover z:100];
        
        NSString *tmp1 = [[NSString alloc] initWithFormat:@"%d",rankpoint[0][1]];
        CCLabelTTF *re1 = [CCLabelTTF labelWithString:tmp1 fontName:@"Marker Felt" fontSize:60];
        [re1 setPosition:ccp(180, 260)];
        [self addChild:re1 z:100];
        num = rankpoint[1][1];
        [self rankingg];
        [cover setPosition:ccp(300, 260)];
        [self addChild:cover z:100];
        
        NSString *tmp2 = [[NSString alloc] initWithFormat:@"%d",rankpoint[0][2]];
        CCLabelTTF *re2 = [CCLabelTTF labelWithString:tmp2 fontName:@"Marker Felt" fontSize:60];
        [re2 setPosition:ccp(180, 125)];
        [self addChild:re2 z:100];
        num = rankpoint[1][2];
        [self rankingg];
        [cover setPosition:ccp(300, 125)];
        [self addChild:cover z:100];
        
    }
    else if (delegate.count == 4){
        NSString *tmp = [[NSString alloc] initWithFormat:@"%d",rankpoint[0][0]];
        CCLabelTTF *re = [CCLabelTTF labelWithString:tmp fontName:@"Marker Felt" fontSize:60];
        [re setPosition:ccp(180, 410)];
        [self addChild:re z:100];
        num = rankpoint[1][0];
        [self rankingg];
        [cover setPosition:ccp(300, 410)];
        [self addChild:cover z:100];
        
        NSString *tmp1 = [[NSString alloc] initWithFormat:@"%d",rankpoint[0][1]];
        CCLabelTTF *re1 = [CCLabelTTF labelWithString:tmp1 fontName:@"Marker Felt" fontSize:60];
        [re1 setPosition:ccp(180, 310)];
        [self addChild:re1 z:100];
        num = rankpoint[1][1];
        [self rankingg];
        [cover setPosition:ccp(300, 310)];
        [self addChild:cover z:100];
        
        NSString *tmp2 = [[NSString alloc] initWithFormat:@"%d",rankpoint[0][2]];
        CCLabelTTF *re2 = [CCLabelTTF labelWithString:tmp2 fontName:@"Marker Felt" fontSize:60];
        [re2 setPosition:ccp(180, 220)];
        [self addChild:re2 z:100];
        num = rankpoint[1][2];
        [self rankingg];
        [cover setPosition:ccp(300, 220)];
        [self addChild:cover z:100];
        
        NSString *tmp3 = [[NSString alloc] initWithFormat:@"%d",rankpoint[0][3]];
        CCLabelTTF *re3 = [CCLabelTTF labelWithString:tmp3 fontName:@"Marker Felt" fontSize:60];
        [re3 setPosition:ccp(180, 120)];
        [self addChild:re3 z:100];
        num = rankpoint[1][3];
        [self rankingg];
        [cover setPosition:ccp(300, 120)];
        [self addChild:cover z:100];
        
    }
    
}
-(void) rank
{
    AppController *delegate = [self delegate];
    if(delegate.count == 2){
        CCSprite *bgSprite = [CCSprite spriteWithFile:@"rank2p.png"];
        bgSprite.anchorPoint = CGPointZero;
        [bgSprite setPosition: ccp(0, 0)];
        [self addChild:bgSprite z:0];
        
        gold = [CCSprite spriteWithFile:@"gold.png"];
        [gold setPosition:ccp(size.width * 1/5, 320)];
        [self addChild:gold z:100];
        
        ddong = [CCSprite spriteWithFile:@"ddong.png"];
        [ddong setPosition:ccp(size.width * 1/5, 165)];
        [self addChild:ddong z:100];
        
        rankpoint[0][0] = delegate.colaPoint;
        rankpoint[1][0] = 1;
        rankpoint[0][1] = delegate.ciderPoint;
        rankpoint[1][1] = 2;
    }
    
    if(delegate.count == 3){
        CCSprite *bgSprite = [CCSprite spriteWithFile:@"rank3p.png"];
        bgSprite.anchorPoint = CGPointZero;
        [bgSprite setPosition: ccp(0, 0)];
        [self addChild:bgSprite z:0];
        
        gold = [CCSprite spriteWithFile:@"gold.png"];
        [gold setPosition:ccp(size.width * 1/5, 390)];
        [self addChild:gold z:100];
        
        silver = [CCSprite spriteWithFile:@"silver.png"];
        [silver setPosition:ccp(size.width * 1/5, 260)];
        [self addChild:silver z:100];
        
        ddong = [CCSprite spriteWithFile:@"ddong.png"];
        [ddong setPosition:ccp(size.width * 1/5, 125)];
        [self addChild:ddong z:100];
        
        rankpoint[0][0] = delegate.colaPoint;
        rankpoint[1][0] = 1;
        rankpoint[0][1] = delegate.ciderPoint;
        rankpoint[1][1] = 2;
        rankpoint[0][2] = delegate.hitePoint;
        rankpoint[1][2] = 3;
    }
    if (delegate.count == 4){
        CCSprite *bgSprite = [CCSprite spriteWithFile:@"rankback1.png"];
        bgSprite.anchorPoint = CGPointZero;
        [bgSprite setPosition: ccp(0, 0)];
        [self addChild:bgSprite z:0];
        
        gold = [CCSprite spriteWithFile:@"gold.png"];
        [gold setPosition:ccp(size.width * 1/5, 410)];
        [self addChild:gold z:100];
        
        silver = [CCSprite spriteWithFile:@"silver.png"];
        [silver setPosition:ccp(size.width * 1/5, 310)];
        [self addChild:silver z:100];
        
        bronze = [CCSprite spriteWithFile:@"bronze.png"];
        [bronze setPosition:ccp(size.width * 1/5, 220)];
        [self addChild:bronze z:100];
        
        ddong = [CCSprite spriteWithFile:@"ddong.png"];
        [ddong setPosition:ccp(size.width * 1/5, 120)];
        [self addChild:ddong z:100];
        
        rankpoint[0][0] = delegate.colaPoint;
        rankpoint[1][0] = 1;
        rankpoint[0][1] = delegate.ciderPoint;
        rankpoint[1][1] = 2;
        rankpoint[0][2] = delegate.hitePoint;
        rankpoint[1][2] = 3;
        rankpoint[0][3] = delegate.cassPoint;
        rankpoint[1][3] = 4;
    }
    
    
}

- (void) goBack
{
    backsound = [SimpleAudioEngine sharedEngine];
    if(backsound != nil){
        [backsound preloadEffect:@"itemsound.mp3"];
        
        backsound.effectsVolume = 1.0f;
    }
    [backsound playEffect:@"itemsound.mp3"];
    
    AppController *delegate = [self delegate];
    delegate.colaPoint = 0;
    delegate.ciderPoint = 0;
    delegate.hitePoint = 0;
    delegate.cassPoint = 0;
    [SceneManager goMenu];
}

@end
