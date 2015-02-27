//
//  GameDetailViewDataSource.h
//  ScoreKeeperCoreData
//
//  Created by Ross McIlwaine on 2/27/15.
//  Copyright (c) 2015 Ross McIlwaine. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameController.h"

@interface GameDetailViewDataSource : NSObject

@property (strong, nonatomic) Game *game;

- (void)updateWithGame:(Game *)game;

@end
