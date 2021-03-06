//
//  GameScene.h
//  PVZ
//
//  Created by Ibokan on 12-11-7.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "Plant.h"
#import "Zombies.h"
#import "Bullet.h"

@interface GameScene : CCLayer {
    CCSprite * backGround;
    CCSprite * zombie11;
}
@property(nonatomic,retain)CCSprite * backGround;
@property(nonatomic,retain)CCSprite * zombie11;
+(CCScene *) scene;

-(void) addZombies;
-(void) updateGame:(ccTime)delta;

@end
