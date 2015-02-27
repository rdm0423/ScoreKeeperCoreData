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
    self.player = player;
    self.playerTextField.text = player.name;
    self.scoreLabel.text = [player.score stringValue];
    self.stepper.value = [player.score doubleValue];
}


- (IBAction)textFieldEditingEnded:(id)sender {
    self.player.name = self.playerTextField.text;
    
    [[GameController sharedInstance] save];
}

- (IBAction)stepperTapped:(id)sender {
    self.scoreLabel.text = [NSString stringWithFormat:@"%.0f", self.stepper.value];
    self.player.score = [NSNumber numberWithDouble:self.stepper.value];
    
    [[GameController sharedInstance] save];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    
    return YES;
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
