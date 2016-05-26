//
//  ViewController.m
//  CalculeTron
//
//  Created by Paul Lefebvre on 5/26/16.
//  Copyright © 2016 Paul Lefebvre. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *operandOne;
@property (weak, nonatomic) IBOutlet UITextField *operandTwo;
@property (weak, nonatomic) IBOutlet UILabel *operationLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)onOperationTapped:(UIButton *)sender {
    
    double op1 = self.operandOne.text.doubleValue;
    double op2 = self.operandTwo.text.doubleValue;
    
    self.operationLabel.text = sender.currentTitle;
    if ([self.operationLabel.text isEqualToString:@"+"]) {
        self.title = [NSString stringWithFormat:@"%.2f", op1 + op2];
    } else if ([self.operationLabel.text isEqualToString:@"-"]) {
        self.title = [NSString stringWithFormat:@"%.2f", op1 - op2];
    } else if ([self.operationLabel.text isEqualToString:@"x"]) {
        self.title = [NSString stringWithFormat:@"%.2f", op1 * op2];
    }else {
        self.title = [NSString stringWithFormat:@"%.2f", op1 / op2];
    }

}

@end
