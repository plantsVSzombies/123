//
//  GameScene.m
//  PVZ
//
//  Created by Ibokan on 12-11-7.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "GameScene.h"
#import "Zombies.h"
#import "CCAnimationHelper.h"
@implementation GameScene
@synthesize backGround;
+(CCScene *) scene
{
	CCScene *scene = [CCScene node];
	
	GameScene *layer = [GameScene node];
	
	[scene addChild: layer];
	
	return scene;
}
-(id) init
{
	if( (self=[super init]) ) {
    
        self.isTouchEnabled = YES;
        [[CCSpriteFrameCache sharedSpriteFrameCache] addSpriteFramesWithFile:@"cardMenu.plist"];
        backGround = [CCSprite spriteWithSpriteFrameName:@"background1.png"];
        backGround.anchorPoint = ccp(1, 0);
        backGround.position = ccp(480, 0);
        [self addChild:backGround];
        //[self schedule:@selector(delayTwoSecondsToMove) interval:2];
        [self schedule:@selector(delayTwoSecondsToMove) interval:2 repeat:0 delay:0];

        
	}
	return self;
}


-(void) addZombies
{
    
}
-(void) updateGame:(ccTime)delta
{
    
}


-(void)delayTwoSecondsToMove
{
    NSLog(@"waiting 2 seconds...");
    [backGround runAction:[CCMoveTo actionWithDuration:2 position:ccp(680, 0)]];
    //[self schedule:@selector(addZombie) interval:2];
    [self schedule:@selector(addZombie) interval:2 repeat:0 delay:0];
    [self schedule:@selector(updateGame:) interval:0.05];

}
-(void)addZombie
{
    [[CCSpriteFrameCache sharedSpriteFrameCache] addSpriteFramesWithFile:@"zombies_type.plist"];
    NSLog(@"addz");
    
    CCAnimation *anim = [CCAnimation animationWithFrame:@"zombie" frameCount:22 delay:0.08f];
    CCAnimate* animate = [CCAnimate actionWithAnimation:anim]; 
    CCRepeatForever* repeat = [CCRepeatForever actionWithAction:animate]; 
    CCSprite * zombie = [CCSprite spriteWithSpriteFrameName:@"zombie001.png"];
    [zombie runAction:repeat];
    zombie.position = ccp(500,60);
    [self addChild:zombie];
    
    [zombie runAction:[CCMoveTo actionWithDuration:30 position:ccp(-20, 60)]];
    
    

    
    CCAnimation *anim1 = [CCAnimation animationWithFrame:@"zombie" frameCount:22 delay:0.08f];
    CCAnimate* animate1 = [CCAnimate actionWithAnimation:anim1]; 
    CCRepeatForever* repeat1 = [CCRepeatForever actionWithAction:animate1]; 
    CCSprite * zombie1 = [CCSprite spriteWithSpriteFrameName:@"zombie001.png"];
    [zombie1 runAction:repeat1];
    zombie1.position = ccp(500,115);
    [self addChild:zombie1];
    
    [zombie1 runAction:[CCMoveTo actionWithDuration:30 position:ccp(-20, 115)]];
    
    

    
    CCAnimation *anim2 = [CCAnimation animationWithFrame:@"zombie" frameCount:22 delay:0.08f];
    CCAnimate* animate2 = [CCAnimate actionWithAnimation:anim2]; 
    CCRepeatForever* repeat2 = [CCRepeatForever actionWithAction:animate2]; 
    CCSprite * zombie2 = [CCSprite spriteWithSpriteFrameName:@"zombie001.png"];
    [zombie2 runAction:repeat2];
    zombie2.position = ccp(500,170);
    [self addChild:zombie2];
    
    [zombie2 runAction:[CCMoveTo actionWithDuration:30 position:ccp(-20, 170)]];
    
    
  
    
    CCAnimation *anim3 = [CCAnimation animationWithFrame:@"zombie" frameCount:22 delay:0.08f];
    CCAnimate* animate3 = [CCAnimate actionWithAnimation:anim3]; 
    CCRepeatForever* repeat3 = [CCRepeatForever actionWithAction:animate3]; 
    CCSprite * zombie3 = [CCSprite spriteWithSpriteFrameName:@"zombie001.png"];
    [zombie3 runAction:repeat3];
    zombie3.position = ccp(500,225);
    [self addChild:zombie3];
    
    [zombie3 runAction:[CCMoveTo actionWithDuration:30 position:ccp(-20, 225)]];
    
    
    [[CCSpriteFrameCache sharedSpriteFrameCache] addSpriteFramesWithFile:@"zombies_type.plist"];
    NSLog(@"addz");
    
    CCAnimation *anim4 = [CCAnimation animationWithFrame:@"zombie" frameCount:22 delay:0.08f];
    CCAnimate* animate4 = [CCAnimate actionWithAnimation:anim4]; 
    CCRepeatForever* repeat4 = [CCRepeatForever actionWithAction:animate4]; 
    CCSprite * zombie4 = [CCSprite spriteWithSpriteFrameName:@"zombie001.png"];
    [zombie4 runAction:repeat4];
    zombie4.position = ccp(500,280);
    [self addChild:zombie4];
    
    [zombie4 runAction:[CCMoveTo actionWithDuration:30 position:ccp(-20, 280     )]];
      
    
}

@end
