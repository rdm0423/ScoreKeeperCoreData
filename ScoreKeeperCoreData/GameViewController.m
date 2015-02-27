//
//  ViewController.m
//  ScoreKeeperCoreData
//
//  Created by Ross McIlwaine on 2/26/15.
//  Copyright (c) 2015 Ross McIlwaine. All rights reserved.
//

#import "GameViewController.h"
#import "GameDetailViewController.h"

@interface GameViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation GameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"addGame"]) {
        GameDetailViewController *gameDetailViewController = segue.destinationViewController;
        //need update with game method called here
    }
    if ([segue.identifier isEqualToString:@"gameTapped"]) {
        UITableViewCell *cell = sender;
        NSIndexPath *indexPath = [self.tableView indexPathForCell:cell];
        GameDetailViewController *gameDetailViewController = segue.destinationViewController;
        //need update with game method called here
    }
}

@end
