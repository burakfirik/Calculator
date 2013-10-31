//
//  WebViewController.h
//  Calculator
//
//  Created by burak firik on 10/29/13.
//  Copyright (c) 2013 Razeware LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController<UIWebViewDelegate>{
    UIActivityIndicatorView *indicator;

}

@property (strong, nonatomic)IBOutlet UIWebView *myWebView;

-(IBAction)backButton:(UIButton *)sender;

@end
