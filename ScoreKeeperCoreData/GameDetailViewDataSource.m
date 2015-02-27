//
//  GameDetailViewDataSource.m
//  ScoreKeeperCoreData
//
//  Created by Ross McIlwaine on 2/27/15.
//  Copyright (c) 2015 Ross McIlwaine. All rights reserved.
//

#import "GameDetailViewDataSource.h"
#import "ScoreTableViewCell.h"
@import UIKit;

@interface GameDetailViewDataSource () <UITableViewDataSource>

@property (strong, nonatomic) NSArray *players;

@end

@implementation GameDetailViewDataSource


- (void)updateWithGame:(Game *)game {
    
    NSMutableArray *players = [NSMutableArray new];
    for (Player *player in game.players) {
        [players addObject:player];
    }
    self.game = game;
    self.players = players;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.game.players.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ScoreTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"scoreCell"];
    cell.selectionStyle = UITableViewCellSelectionStyleBlue;
    Player *player = [self.players objectAtIndex:indexPath.row];
    [cell updateWithPlayer:player];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [[GameController sharedInstance] removePlayer:[self.players objectAtIndex:indexPath.row]];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}

@end
