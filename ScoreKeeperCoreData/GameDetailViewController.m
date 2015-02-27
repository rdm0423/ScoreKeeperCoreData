//
//  GameDetailViewController.m
//  ScoreKeeperCoreData
//
//  Created by Ross McIlwaine on 2/26/15.
//  Copyright (c) 2015 Ross McIlwaine. All rights reserved.
//

#import "GameDetailViewController.h"
#import "GameDetailViewDataSource.h"
#import "GameController.h"

@interface GameDetailViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) IBOutlet GameDetailViewDataSource *dataSource;


@end

@implementation GameDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = self.game.title;
}

- (IBAction)addPlayer:(id)sender {
    [[GameController sharedInstance] addPlayerToGame:self.game];
    
    [self.dataSource updateWithGame:self.game];
    
    [self.tableView reloadData];
}

- (void)updateWithGame:(Game *)game {
    self.game = game;
    [self.dataSource updateWithGame:game];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
