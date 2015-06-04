//
//  ViewController.m
//  TextFieldDemo
//
//  Created by satheesh on 6/3/15.
//  Copyright (c) 2015 Satish. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{

 BOOL tick_selection;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

   // [self.firstBtn setBackgroundImage:[UIImage imageNamed:@"user_icon2.png"] forState:(UIControlStateHighlighted|UIControlStateSelected)];
     [self.seconfBtn setBackgroundImage:[UIImage imageNamed:@"user_icon1.png"] forState:UIControlStateNormal];
    [self.seconfBtn setBackgroundImage:[UIImage imageNamed:@"user_icon2.png"] forState:UIControlStateSelected];
    
   /* [self.firstBtn setBackgroundImage:[UIImage imageNamed:@"user_icon1.png"] forState:UIControlStateDisabled];
    [self.seconfBtn setBackgroundImage:[UIImage imageNamed:@"user_icon1.png"] forState:UIControlStateDisabled];*/
    
    self.firstTextField.delegate = self;
    self.seconfTextField.delegate = self;
    
    
    tick_selection = NO;
    
    
  
}
/*-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
 
}*/
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    
    return NO;
    
    

}
- (IBAction)firstBtnAction:(id)sender
{
  
    if (tick_selection==NO) {
        self.firstBtn.selected=YES;
       
        self.seconfBtn.highlighted = YES;
        self.seconfBtn.userInteractionEnabled = NO;
        self.seconfTextField.userInteractionEnabled = NO;
          tick_selection=YES;
    }
    else
    {
        self.firstBtn.selected=NO;
        self.seconfBtn.highlighted = NO;
        self.firstTextField.text = @"";
        self.seconfBtn.userInteractionEnabled = YES;
        self.seconfTextField.userInteractionEnabled = YES;
        tick_selection=NO;
    }
    
   // self.firstBtn.selected = YES;
   
    
}
- (IBAction)secondBtnAction:(id)sender
{
    
     self.firstTextField.text = @"";
    if (tick_selection==NO) {
        self.seconfBtn.selected=YES;
        self.firstBtn.highlighted = YES;
        self.firstBtn.userInteractionEnabled = NO;
        self.firstTextField.userInteractionEnabled = NO;
        tick_selection=YES;
    }
    else
    {
        self.seconfBtn.selected=NO;
         self.firstBtn.highlighted = NO;
        self.seconfTextField.text = @"";
        self.firstBtn.userInteractionEnabled = YES;
        self.firstTextField.userInteractionEnabled = YES;
        tick_selection=NO;
    }
}

-(void)textFieldDidBeginEditing:(UITextField *)textField
{
    if (textField.tag == 0 ) {
        self.firstTextField.layer.borderColor = [[UIColor redColor]CGColor];
        self.firstTextField.layer.borderWidth = 1.0;
    }else
    {
        self.seconfTextField.layer.borderColor = [[UIColor redColor]CGColor];
        self.seconfTextField.layer.borderWidth = 1.0;
    }
    
}

-(void)textFieldDidEndEditing:(UITextField *)textField
{
    if (textField.tag == 0 ) {
        self.firstTextField.layer.borderColor = [[UIColor blackColor]CGColor];
        self.firstTextField.layer.borderWidth = 1.0;
    }else
    {
        self.seconfTextField.layer.borderColor = [[UIColor blackColor]CGColor];
        self.seconfTextField.layer.borderWidth = 1.0;
    }
}
- (IBAction)doneAction:(id)sender {
    

    
    if (self.firstBtn.selected == YES)
    {
        
       if (self.firstTextField.text.length == 0) {
    UIAlertView * alert = [[UIAlertView alloc]initWithTitle:@"Textfield One Warning" message:@"Please Entre the Text" delegate:nil cancelButtonTitle:@"Okay" otherButtonTitles:nil, nil];
    [alert show];
    }
    else
    {
    
    UIAlertView * alert = [[UIAlertView alloc]initWithTitle:@"Message" message:self.firstTextField.text delegate:nil cancelButtonTitle:@"Okay" otherButtonTitles:nil, nil];
    [alert show];
    
    }
    }
    else if (self.seconfBtn.selected == YES)
    {
    
        self.firstTextField.text = @"";
        if (self.seconfTextField.text.length == 0) {
            UIAlertView * alert = [[UIAlertView alloc]initWithTitle:@"Textfield Two Warning" message:@"Please Enter the Text" delegate:nil cancelButtonTitle:@"Okay" otherButtonTitles:nil, nil];
            [alert show];
        }
        else
        {
            
            UIAlertView * alert = [[UIAlertView alloc]initWithTitle:@"Message" message:self.seconfTextField.text delegate:nil cancelButtonTitle:@"Okay" otherButtonTitles:nil, nil];
            [alert show];
            
        }
    
     }
    
    
  /*  if (tick_selection == YES) {
        if (self.firstTextField.text.length == 0) {
            UIAlertView * alert = [[UIAlertView alloc]initWithTitle:@"Warning" message:@"Please Entre the Text" delegate:nil cancelButtonTitle:@"Okay" otherButtonTitles:nil, nil];
            [alert show];
        }
        else
        {
            
            UIAlertView * alert = [[UIAlertView alloc]initWithTitle:@"Message" message:self.firstTextField.text delegate:nil cancelButtonTitle:@"Okay" otherButtonTitles:nil, nil];
            [alert show];
         }
        }*/
        
    

}
@end
