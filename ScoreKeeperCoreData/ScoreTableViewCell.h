//
//  ScoreTableViewCell.h
//  ScoreKeeperCoreData
//
//  Created by Ross McIlwaine on 2/26/15.
//  Copyright (c) 2015 Ross McIlwaine. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Player.h"

@interface ScoreTableViewCell : UITableViewCell

- (void)updateWithPlayer:(Player *)player;

@end
