//
//  GameController.m
//  ScoreKeeperCoreData
//
//  Created by Ross McIlwaine on 2/27/15.
//  Copyright (c) 2015 Ross McIlwaine. All rights reserved.
//

#import "GameController.h"
#import "Stack.h"

@implementation GameController

+ (GameController *)sharedInstance {
    static GameController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [GameController new];
    });
    return sharedInstance;
    
}

- (NSArray *)games {
    NSFetchRequest *fetchRequest = [NSFetchRequest fetchRequestWithEntityName:@"Game"];
    
    return [[Stack sharedInstance].managedObjectContext executeFetchRequest:fetchRequest error:NULL];
}

- (Game *)createGameWithTitle:(NSString *)title {
    Game *game = [NSEntityDescription insertNewObjectForEntityForName:@"Game" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    
    game.title = title;
    [self save];
    
    return game;
}

- (void)removeGame:(Game *)game {
    [[Stack sharedInstance].managedObjectContext deleteObject:game];
    
    [self save];
}

- (void)addPlayerToGame:(Game *)game {
    Player *player = [NSEntityDescription insertNewObjectForEntityForName:@"Player" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
     [[game.players array] arrayByAddingObject:player];
    
    [self save];
}

- (void)removePlayer:(Player *)player {
    [[Stack sharedInstance].managedObjectContext deleteObject:player];
    
    [self save];
}


- (void)save {
    [[Stack sharedInstance].managedObjectContext save:NULL];
}

@end
