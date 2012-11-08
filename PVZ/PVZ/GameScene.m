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
@synthesize zombie11;
+(CCScene *) scene
{
	CCScene *scene = [CCScene node];
	
	GameScene *layer = [GameScene node];
	
	[scene addChild: layer];
	
	return scene;
}
-(void)addPlant
{

}
-(void)initPlantMenu
{
    [[CCSpriteFrameCache sharedSpriteFrameCache] addSpriteFramesWithFile:@"cardMenu.plist"];
    CCSprite *normalShoter = [CCSprite spriteWithSpriteFrameName:@"Peashooter2.png"];
    CCSprite* selected = [CCSprite spriteWithSpriteFrameName:@"Peashooter2_select.png"];     
    CCSprite* disabled = [CCSprite spriteWithSpriteFrameName:@"Peashooter2_disable.png"];    
    CCMenuItemSprite* itemNormal = [CCMenuItemSprite 
                                    itemWithNormalSprite:normalShoter 
                                    selectedSprite:selected
                                    disabledSprite:disabled
                                    target:self 
                                    selector:@selector(addPlant)];
   
    CCSprite *snowShoter = [CCSprite spriteWithSpriteFrameName:@"SnowPea.png"];
    CCSprite* snowSelected = [CCSprite spriteWithSpriteFrameName:@"SnowPea_select.png"];     
    CCSprite* snowDisabled = [CCSprite spriteWithSpriteFrameName:@"SnowPea_disable.png"];
    
    CCMenuItemSprite* itemSnow = [CCMenuItemSprite 
                                    itemWithNormalSprite:snowShoter 
                                    selectedSprite:snowSelected
                                    disabledSprite:snowDisabled
                                    target:self 
                                    selector:@selector(addPlant)];
    CCSprite *threeShoter = [CCSprite spriteWithSpriteFrameName:@"Threepeater.png"];
    CCSprite* threeSelected = [CCSprite spriteWithSpriteFrameName:@"Threepeater_select.png"];     
    CCSprite* threeDisabled = [CCSprite spriteWithSpriteFrameName:@"Threepeater_disable.png"];
    
    CCMenuItemSprite* itemThree = [CCMenuItemSprite 
                                    itemWithNormalSprite:threeShoter 
                                    selectedSprite:threeSelected
                                    disabledSprite:threeDisabled
                                    target:self 
                                    selector:@selector(addPlant)];
    CCSprite *tallNut = [CCSprite spriteWithSpriteFrameName:@"TallNut.png"];
    CCSprite* nutSelected = [CCSprite spriteWithSpriteFrameName:@"TallNut_select.png"];     
    CCSprite* nutDisabled = [CCSprite spriteWithSpriteFrameName:@"TallNut_disable.png"];
    
    CCMenuItemSprite* itemNut = [CCMenuItemSprite 
                                    itemWithNormalSprite:tallNut 
                                    selectedSprite:nutSelected
                                    disabledSprite:nutDisabled
                                    target:self 
                                    selector:@selector(addPlant)];
    CCSprite *cherry = [CCSprite spriteWithSpriteFrameName:@"CherryBomb.png"];
    CCSprite* cherrySelected = [CCSprite spriteWithSpriteFrameName:@"CherryBomb_select.png"];     
    CCSprite* cherryDisabled = [CCSprite spriteWithSpriteFrameName:@"CherryBomb_disable.png"];
    
    CCMenuItemSprite* itemcherry = [CCMenuItemSprite 
                                    itemWithNormalSprite:cherry 
                                    selectedSprite:cherrySelected
                                    disabledSprite:cherryDisabled
                                    target:self 
                                    selector:@selector(addPlant)];
    
    CCSprite *sunFlower = [CCSprite spriteWithSpriteFrameName:@"SunFlower.png"];
    CCSprite* sunSelected = [CCSprite spriteWithSpriteFrameName:@"SunFlower_select.png"];     
    CCSprite* sunDisabled = [CCSprite spriteWithSpriteFrameName:@"SunFlower_disable.png"];
    
    CCMenuItemSprite* itemsunFlower = [CCMenuItemSprite 
                                    itemWithNormalSprite:sunFlower 
                                    selectedSprite:sunSelected
                                    disabledSprite:sunDisabled
                                    target:self 
                                    selector:@selector(addPlant)];
    CCMenu *menu = [CCMenu menuWithItems:itemNormal,itemSnow,itemThree,itemNut,itemcherry,itemsunFlower, nil];
    [menu setPosition:ccp( 20 , 160)];
    [menu alignItemsVerticallyWithPadding:0];

    
    [self addChild:menu];
}
-(void)initDetailZombies
{
    [[CCSpriteFrameCache sharedSpriteFrameCache] addSpriteFramesWithFile:@"zombies_type.plist"];
    [[CCSpriteFrameCache sharedSpriteFrameCache] addSpriteFramesWithFile:@"plants_type.plist"];    
    CCAnimation *anim1 = [CCAnimation animationWithFrame:@"zombie" frameCount:22 delay:0.08f];
    CCAnimate* animate1 = [CCAnimate actionWithAnimation:anim1]; 
    CCRepeatForever* repeat1 = [CCRepeatForever actionWithAction:animate1]; 
    CCSprite * zombie1 = [CCSprite spriteWithSpriteFrameName:@"zombie004.png"];
    [zombie1 runAction:repeat1];
    zombie1.position = ccp(600,280);
    [backGround addChild:zombie1];
    
    CCAnimation *anim12 = [CCAnimation animationWithFrame:@"BucketheadZombie" frameCount:15 delay:0.08f];
    CCAnimate* animate12 = [CCAnimate actionWithAnimation:anim12]; 
    CCRepeatForever* repeat12 = [CCRepeatForever actionWithAction:animate12]; 
    CCSprite * zombie12 = [CCSprite spriteWithSpriteFrameName:@"BucketheadZombie001.png"];
    [zombie12 runAction:repeat12];
    zombie12.position = ccp(620,220);
    [backGround addChild:zombie12];
    
    
    CCAnimation *anim13 = [CCAnimation animationWithFrame:@"ConeheadZombie" frameCount:21 delay:0.08f];
    CCAnimate* animate13 = [CCAnimate actionWithAnimation:anim13]; 
    CCRepeatForever* repeat13 = [CCRepeatForever actionWithAction:animate13]; 
    CCSprite * zombie13 = [CCSprite spriteWithSpriteFrameName:@"ConeheadZombie001.png"];
    [zombie13 runAction:repeat13];
    zombie13.position = ccp(600,160);
    [backGround addChild:zombie13];
    
    
    
    CCAnimation *anim14 = [CCAnimation animationWithFrame:@"FlagZombie" frameCount:12 delay:0.08f];
    CCAnimate* animate14 = [CCAnimate actionWithAnimation:anim14]; 
    CCRepeatForever* repeat14 = [CCRepeatForever actionWithAction:animate14]; 
    CCSprite * zombie14 = [CCSprite spriteWithSpriteFrameName:@"FlagZombie001.png"];
    [zombie14 runAction:repeat14];
    zombie14.position = ccp(620,100);
    [backGround addChild:zombie14];
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



-(void)initBackMenuItem//初始化返回menu
{
    [CCMenuItemFont setFontSize:30];
    CCMenuItem *itemBack = [CCMenuItemFont itemWithString:@"Back" block:^(id sender) {
        
        [[CCDirector sharedDirector]popScene];
    }];
    CCMenu *menu = [CCMenu menuWithItems:itemBack, nil];
    [menu setAnchorPoint:ccp(1, 1)];
    [menu setPosition:ccp( 440 , 300)];
    [self addChild:menu];
}

-(void)delayTwoSecondsToMove
{
    NSLog(@"waiting 2 seconds...");
    [backGround runAction:[CCMoveTo actionWithDuration:5 position:ccp(680, 0)]];
    //[self schedule:@selector(addZombie) interval:2];
    [self schedule:@selector(initBackMenuItem) interval:7];
    [self initPlantMenu];
    [self initDetailZombies];
    

    [self schedule:@selector(addZombie) interval:2 repeat:0 delay:0];
    [self schedule:@selector(updateGame:) interval:0.05];


    [self schedule:@selector(addZombie) interval:5 repeat:0 delay:0];
        

}
-(void)addZombie
{
    [[CCSpriteFrameCache sharedSpriteFrameCache] addSpriteFramesWithFile:@"zombies_type.plist"];
    NSLog(@"addz");
    [[CCSpriteFrameCache sharedSpriteFrameCache] addSpriteFramesWithFile:@"plants_type.plist"];    
    CCAnimation *anim1 = [CCAnimation animationWithFrame:@"peashooter" frameCount:13 delay:0.08f];
    CCAnimate* animate1 = [CCAnimate actionWithAnimation:anim1]; 
    CCRepeatForever* repeat1 = [CCRepeatForever actionWithAction:animate1]; 
    CCSprite * zombie1 = [CCSprite spriteWithSpriteFrameName:@"peashooter001.png"];
    [zombie1 runAction:repeat1];
    zombie1.position = ccp(90,100);
    [self addChild:zombie1];
    
    CCAnimation *anim = [CCAnimation animationWithFrame:@"zombie" frameCount:22 delay:0.08f];
    CCAnimate* animate = [CCAnimate actionWithAnimation:anim]; 
    CCRepeatForever* repeat = [CCRepeatForever actionWithAction:animate]; 
    CCSprite * zombie = [CCSprite spriteWithSpriteFrameName:@"zombie001.png"];
    [zombie runAction:repeat];

    zombie.position = ccp(500,60);
    [self addChild:zombie];
    
    [zombie runAction:[CCMoveTo actionWithDuration:30 position:ccp(-20, 60)]];
    
    

    
       

    
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
      

    zombie.position = ccp(500,55);
    [self addChild:zombie];
    
    [zombie runAction:[CCMoveTo actionWithDuration:40 position:ccp(110, 55)]];

    
    
    
    
    
    CCAnimation *anim12 = [CCAnimation animationWithFrame:@"WallNut" frameCount:16 delay:0.08f];
    CCAnimate* animate12 = [CCAnimate actionWithAnimation:anim12]; 
    CCRepeatForever* repeat12 = [CCRepeatForever actionWithAction:animate12]; 
    CCSprite * zombie12 = [CCSprite spriteWithSpriteFrameName:@"WallNut001.png"];
    [zombie12 runAction:repeat12];
    zombie12.position = ccp(90,45);
    [self addChild:zombie12];

    
    
    
    [[CCSpriteFrameCache sharedSpriteFrameCache] addSpriteFramesWithFile:@"peashooter.plist"];    
    
     zombie11 = [CCSprite spriteWithSpriteFrameName:@"pb00.png"];
    zombie11.position = ccp(95,110);
    [self addChild:zombie11];
    [zombie11 runAction:[CCMoveTo actionWithDuration:5 position:ccp(480, 110)]];
    [zombie11 runAction:[CCRotateTo actionWithDuration:5 angle:720]];
    [self schedule:@selector(shot) interval:5 repeat:100000 delay:0];
            
}
-(void)shot
{
    zombie11.position = ccp(95,110);
    [zombie11 runAction:[CCMoveTo actionWithDuration:5 position:ccp(480, 110)]];
    [zombie11 runAction:[CCRotateTo actionWithDuration:5 angle:720]];
}
@end
