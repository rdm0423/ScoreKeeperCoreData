//
//  GameTableViewDataSource.m
//  ScoreKeeperCoreData
//
//  Created by Ross McIlwaine on 2/27/15.
//  Copyright (c) 2015 Ross McIlwaine. All rights reserved.
//

#import "GameTableViewDataSource.h"
@import UIKit;

@implementation GameTableViewDataSource <UITableViewDataSource>

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    

    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"gameCell"];
    
    return cell;
    
}

@end
