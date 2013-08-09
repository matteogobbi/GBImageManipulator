//
//  ImageManipulator.h
//  gobbeasy
//
//  Created by Matteo Gobbi on 12/10/12.
//  Copyright (c) 2012 Matteo Gobbi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreGraphics/CoreGraphics.h>

@interface GBImageManipulator : NSObject

+ (UIImage *)scaleImage:(UIImage *)image toSize:(CGSize)newSize;
+ (UIImage *)mergeImage:(UIImage *)firstImage withImage:(UIImage *)secondImage bringSecondImageToFront:(BOOL)flag;

@end
