//
//  GameTableViewDataSource.m
//  ScoreKeeperCoreData
//
//  Created by Ross McIlwaine on 2/27/15.
//  Copyright (c) 2015 Ross McIlwaine. All rights reserved.
//

#import "GameTableViewDataSource.h"
#import "GameController.h"
@import UIKit;

@interface GameTableViewDataSource () <UITableViewDataSource>

@end

@implementation GameTableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [GameController sharedInstance].games.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"gameCell"];
    
    Game *game = [[GameController sharedInstance].games objectAtIndex:indexPath.row];
    
    cell.textLabel.text = game.title;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [[GameController sharedInstance] removeGame:[[GameController sharedInstance].games objectAtIndex:indexPath.row]];
        
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}


@end
