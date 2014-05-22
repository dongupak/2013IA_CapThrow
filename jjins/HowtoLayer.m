#import "HowtoLayer.h"
#import "SceneManager.h"

@implementation HowtoLayer

+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	HowtoLayer *layer = [HowtoLayer node];
	
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
        
        CCSprite *bgSprite = [CCSprite spriteWithFile:@"howtoo.png"];
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
