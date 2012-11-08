//
//  Zombies.m
//  PVZ
//
//  Created by Ibokan on 12-11-8.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "Zombies.h"
#import "CCAnimationHelper.h"

@implementation Zombies
-(void) addPath//加僵尸行走路线
{
//    [[CCSpriteFrameCache sharedSpriteFrameCache] addSpriteFramesWithFile:@"zombies_type.plist"];
//
//    CCAnimation* anim = [CCAnimation animationWithFile:@"zombies_type.plist"                             
//                                            frameCount:22 
//                                                 delay:0.08f];
//    CCAnimate* animate = [CCAnimate actionWithAnimation:anim]; 
//    CCRepeatForever* repeat = [CCRepeatForever actionWithAction:animate]; 
//    CCSprite * zombie = [CCSprite spriteWithSpriteFrameName:@"zombie001.png"];
//    [zombie runAction:repeat];
//    zombie.position = ccp(480,50);
//    [self addChild:zombie];
//
//    [zombie runAction:[CCMoveTo actionWithDuration:10 position:ccp(0, 50)]];
    
    switch (rand() % 5) {
        case 0:
            [self moveWithParabola:self startP:ccp(500, 60) endP:ccp(-30, 60)  dirTime:30];
            break;
        case 1:
            [self moveWithParabola:self startP:ccp(500, 115) endP:ccp(-30, 115)  dirTime:30];
            break;
        case 2:
            [self moveWithParabola:self startP:ccp(500, 170) endP:ccp(-30, 170)  dirTime:30];
            break;
        case 3:
            [self moveWithParabola:self startP:ccp(500, 225) endP:ccp(-30, 225)  dirTime:30];
            break;
        case 4:
            [self moveWithParabola:self startP:ccp(500, 280) endP:ccp(-30, 280)  dirTime:30];
            break;
            
        default:
            break;
    }
    

}
-(void)moveWithParabola:(CCSprite*)mSprite startP:(CGPoint)startPoint endP:(CGPoint)endPoint dirTime:(float)time//僵尸的移动
{

//    [[CCSpriteFrameCache sharedSpriteFrameCache] addSpriteFramesWithFile:@"zombies_type.plist"];
//    NSLog(@"addz");
//    
//    CCAnimation *anim = [CCAnimation animationWithFrame:@"zombie" frameCount:22 delay:0.08f];
//    CCAnimate* animate = [CCAnimate actionWithAnimation:anim]; 
//    CCRepeatForever* repeat = [CCRepeatForever actionWithAction:animate]; 
//    CCSprite * mSprite = [CCSprite spriteWithSpriteFrameName:@"zombie001.png"];
//    [mSprite runAction:repeat];
    mSprite.position = startPoint;
//    [self addChild:zombie];
    
    [mSprite runAction:[CCMoveTo actionWithDuration:time position:endPoint]];
}
@end
