//
//  SceneManager.m
//  jjins
//
//  Created by 310 on 13. 5. 21..
//
//

#import "SceneManager.h"

@implementation SceneManager

+(void) goIntro{
    [[CCDirector sharedDirector] replaceScene:[CCTransitionFade transitionWithDuration:1.0 scene:[IntroLayer scene] withColor:ccWHITE]];
}

+(void) goMenu{
    [[CCDirector sharedDirector] replaceScene:[CCTransitionFade transitionWithDuration:1.0 scene:[MenuLayer scene] withColor:ccWHITE]];
}

+(void) goGame{
    [[CCDirector sharedDirector] replaceScene:[CCTransitionFade transitionWithDuration:1.0 scene:[GameLayer scene] withColor:ccWHITE]];
}

// 게임 오버 화면으로 이동
+(void) goGameOver
{
    [[CCDirector sharedDirector] replaceScene:[CCTransitionFade transitionWithDuration:1.0 scene:[GameOverLayer scene] withColor:ccWHITE]];
}

// credit 화면으로 이동
+(void) goCredit{
    [[CCDirector sharedDirector] replaceScene:[CCTransitionFade transitionWithDuration:1.0 scene:[CreditLayer scene] withColor:ccWHITE]];
}

+(void) goHowto{
    [[CCDirector sharedDirector] replaceScene:[CCTransitionFade transitionWithDuration:1.0 scene:[HowtoLayer scene] withColor:ccWHITE]];
}

+(void) goRank{
    [[CCDirector sharedDirector] replaceScene:[CCTransitionFade transitionWithDuration:1.0 scene:[RankLayer scene] withColor:ccWHITE]];
}

+(void) goLoad{
    [[CCDirector sharedDirector] replaceScene:[CCTransitionFade transitionWithDuration:1.0 scene:[LoadLayer scene] withColor:ccWHITE]];
}
+(void) goPoint{
    [[CCDirector sharedDirector] replaceScene:[CCTransitionFade transitionWithDuration:1.0 scene:[pointLayer scene] withColor:ccWHITE]];
}

@end
