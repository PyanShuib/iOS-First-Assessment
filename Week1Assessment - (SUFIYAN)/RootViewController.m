//
//  RootViewController.m
//  Week1Assessment - (SUFIYAN)
//
//  Created by Stolen on 20/03/2017.
//  Copyright © 2017 F.E.V. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()
@property (weak, nonatomic) IBOutlet UITextField *firstNumberInput;
@property (weak, nonatomic) IBOutlet UITextField *secondNumberInput;
@property (weak, nonatomic) IBOutlet UIButton *plusNumbers;

@property (strong, nonatomic) NSNumberFormatter *formatter;
@property (assign, nonatomic) int savedValue;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.plusNumbers addTarget: self action:@selector(onPlus:) forControlEvents: UIControlEventTouchUpInside];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// IMPLEMENTATIONS

- (void)onPlus: (UIButton *) sender {
    
    int result;
    int firstNumber = [self.firstNumberInput.text integerValue];
    int secondNumber = [self.secondNumberInput.text integerValue];
    
    result = firstNumber + secondNumber;
    
    if (result == 999) {
       NSString *myURL = @"https://www.google.com";
       NSURL *URL;
       URL = [NSURL URLWithString:myURL];
        
      // HOW TO LINK TO WEBVIEW CONTROLLER ???  //
        
        // NSURLRequest *request = [NSURLRequest requestWithURL:URL];
        // [self.webView loadRequest:request];
        
    }
    
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
