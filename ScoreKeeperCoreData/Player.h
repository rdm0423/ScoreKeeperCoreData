//
//  Player.h
//  ScoreKeeperCoreData
//
//  Created by Ross McIlwaine on 2/26/15.
//  Copyright (c) 2015 Ross McIlwaine. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Player : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSNumber * score;
@property (nonatomic, retain) NSManagedObject *game;

@end
