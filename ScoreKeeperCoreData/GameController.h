//
//  GameController.h
//  ScoreKeeperCoreData
//
//  Created by Ross McIlwaine on 2/27/15.
//  Copyright (c) 2015 Ross McIlwaine. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Game.h"
#import "Player.h"

@interface GameController : NSObject

@property (strong, nonatomic, readonly) NSArray *games;

+ (GameController *)sharedInstance;

@end
