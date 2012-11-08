//
//  GameMenu.m
//  PVZ
//
//  Created by Ibokan on 12-11-8.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "GameMenu.h"
#import "GameScene.h"

@implementation GameMenu
+(CCScene *) scene
{
    CCScene *scene = [CCScene node];
	
	GameMenu *layer = [GameMenu node];
	
	[scene addChild: layer];
	
	return scene;
}

-(id) init
{
	if( (self=[super init]) ) {
        
        [[CCSpriteFrameCache sharedSpriteFrameCache] addSpriteFramesWithFile:@"loadingLogo.plist"];
        CCSprite * loadingLogo = [CCSprite spriteWithSpriteFrameName:@"titlescreen.png"];
        loadingLogo.anchorPoint = ccp(0, 0);
		[self addChild:loadingLogo];
        [CCMenuItemFont setFontSize:28];
        CCMenuItem *itemStart = [CCMenuItemFont itemWithString:@"ADVENTURE" block:^(id sender) {
			CCTransitionProgressRadialCW *jumoZoom = [CCTransitionProgressRadialCW transitionWithDuration:1 scene:[GameScene scene]];
            
            [[CCDirector sharedDirector] pushScene:jumoZoom];
			
					}];
        
		CCMenuItem *itemMini = [CCMenuItemFont itemWithString:@"MINI-GAMES" block:^(id sender) {
			
        
		}];
        CCMenuItem *itemPuzzle = [CCMenuItemFont itemWithString:@"PUZZLE" block:^(id sender) {
			
            
		}];
        CCMenuItem *itemSur = [CCMenuItemFont itemWithString:@"SURVIVAL" block:^(id sender) {
			
            
		}];
		
		CCMenu *menu = [CCMenu menuWithItems:itemStart, itemMini,itemPuzzle,itemSur, nil];
		
        [menu alignItemsVerticallyWithPadding:20];
		[menu setPosition:ccp( 100, 160)];
        [self addChild:menu];

	
    }
	return self;
}
@end
