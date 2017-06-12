//
//  ViewController.h
//  FirstOpenCV
//
//  Created by Shun Lee on 8/6/2017.
//  Copyright © 2017 mustardLabs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "opencv2/highgui/ios.h"
#include <opencv2/objdetect.hpp> // CascadeClassifier header import

@interface ViewController : UIViewController {
    cv::CascadeClassifier faceDetector;
}


@end

