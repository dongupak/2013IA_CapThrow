//
//  TouchHandlingLayer.m
//  jjins
//
//  Created by mac on 13. 6. 2..
//  Copyright 2013년 __MyCompanyName__. All rights reserved.
//

#import "TouchHandlingLayer.h"
#import "GameLayer2.h"

@implementation TouchHandlingLayer

-(id) init {
    if((self = [super init])){
        self.isTouchEnabled = YES;

    }
    
    return self;
}
/*-(void)ccTouchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"aa");
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInView:[touch view]];
    CGPoint convertdeLoction = [[CCDirector sharedDirector]convertToGL:location];
    
    if(CGRectContainsPoint(game.cover.boundingBox, convertdeLoction))
    {
        NSLog(@"111");
    }    
}
*/
-(void)ccTouchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"bb");
    
}

-(void)ccTouchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"cc");

}
@end
