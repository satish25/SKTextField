//
//  ViewController.h
//  TextFieldDemo
//
//  Created by satheesh on 6/3/15.
//  Copyright (c) 2015 Satish. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *firstTextField;
@property (weak, nonatomic) IBOutlet UITextField *seconfTextField;

@property (weak, nonatomic) IBOutlet UIButton *firstBtn;
@property (weak, nonatomic) IBOutlet UIButton *seconfBtn;
@property (weak, nonatomic) IBOutlet UIButton *doneOutlet;
- (IBAction)doneAction:(id)sender;
@end

