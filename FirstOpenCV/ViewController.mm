//
//  ViewController.m
//  FirstOpenCV
//
//  Created by Shun Lee on 8/6/2017.
//  Copyright © 2017 mustardLabs. All rights reserved.
//

#import "ViewController.h"
#include "opencv2/opencv.hpp" // Required for CV_RGBA2GRAY variable

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Load cascade classifier from the XML file
    NSString *cascadePath = [[NSBundle mainBundle] pathForResource:@"haarcascade_frontalface_alt2" ofType:@"xml"];
    
     faceDetector.load([cascadePath UTF8String]);
    
    // Load image with face
    UIImage* image = [UIImage imageNamed:@"lena.png"];
    cv::Mat faceImage;
    UIImageToMat(image, faceImage);
    
    // Convert to grayscale
    cv::Mat gray;
    cvtColor(faceImage, gray, CV_BGR2GRAY);
    
    // Detect faces
    std::vector<cv::Rect> faces;
    faceDetector.detectMultiScale(gray, faces, 1.1,
                                  2, 0|CV_HAAR_SCALE_IMAGE,
                                  cv::Size(30, 30));
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
