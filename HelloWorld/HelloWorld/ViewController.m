//
//  ViewController.m
//  HelloWorld
//
//  Created by Abhineet Sharma on 01/01/17.
//  Copyright © 2017 Abhineet Sharma. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *simpleTextField;
@property (weak, nonatomic) IBOutlet UILabel *simpleLabel;

@end

@implementation ViewController

- (IBAction)changeLabel:(id)sender {
    NSString *contenText = self.simpleTextField.text; //[[self simpleTextField] text];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *messageText = [NSString stringWithFormat:@"Hello, %@",contenText];
    [_simpleLabel setText:messageText];
    [_simpleTextField resignFirstResponder];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

//deligate
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing : YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
   
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
