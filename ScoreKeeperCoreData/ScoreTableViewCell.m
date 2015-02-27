//
//  ScoreTableViewCell.m
//  ScoreKeeperCoreData
//
//  Created by Ross McIlwaine on 2/26/15.
//  Copyright (c) 2015 Ross McIlwaine. All rights reserved.
//

#import "ScoreTableViewCell.h"

@interface ScoreTableViewCell () <UITextFieldDelegate>

@property (nonatomic, strong) Player *player;

@property (weak, nonatomic) IBOutlet UITextField *playerTextField;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (weak, nonatomic) IBOutlet UIStepper *stepper;


@end

@implementation ScoreTableViewCell


- (void)awakeFromNib {
    // Initialization code
}

- (void)updateWithPlayer:(Player *)player {
    
    
}


- (IBAction)textFieldEditingEnded:(id)sender {
    
    
}

- (IBAction)stepperTapped:(id)sender {
    
    
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
