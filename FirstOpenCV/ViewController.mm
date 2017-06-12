//
//  ViewController.m
//  FirstOpenCV
//
//  Created by Shun Lee on 8/6/2017.
//  Copyright © 2017 mustardLabs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Load cascade classifier from the XML file
    NSString *cascadePath = [[NSBundle mainBundle] pathForResource:@"haarcascade_frontalface_alt2" ofType:@"xml"];
    
     faceDetector.load([cascadePath UTF8String]);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
