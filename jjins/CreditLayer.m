//
//  CreditLayer.m
//  jjins
//
//  Created by 310 on 13. 5. 21..
//
//

#import "CreditLayer.h"
#import "SceneManager.h"

@implementation CreditLayer

+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	CreditLayer *layer = [CreditLayer node];
	
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
        
        CCSprite *bgSprite = [CCSprite spriteWithFile:@"credito.png"];
        bgSprite.anchorPoint = CGPointZero;
        [bgSprite setPosition: ccp(0, 0)];
        [self addChild:bgSprite z:0];
        
        CCMenuItem *back = [CCMenuItemImage itemWithNormalImage:@"back.png" selectedImage:@"back.png" target:self selector:@selector(goBack)];
        CCMenu *menu = [CCMenu menuWithItems:back, nil];
        menu.position = ccp(300, 460);
        [self addChild:menu];
    }
    return self;
}

- (void) goBack
{
    [SceneManager goMenu];
}

@end
