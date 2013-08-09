//
//  ImageManipulator.m
//  gobbeasy
//
//  Created by Matteo Gobbi on 12/10/12.
//  Copyright (c) 2012 Matteo Gobbi. All rights reserved.
//

#import "GBImageManipulator.h"

@implementation GBImageManipulator

/* Scale Image */
+ (UIImage *)scaleImage:(UIImage *)image toSize:(CGSize)newSize {
    UIGraphicsBeginImageContext(newSize);
    [image drawInRect:CGRectMake(0, 0, newSize.width, newSize.height)];
    UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return newImage;
}


/* Merge Image (centered) */
+ (UIImage *)mergeImage:(UIImage *)firstImage withImage:(UIImage *)secondImage bringSecondImageToFront:(BOOL)flag {
    UIGraphicsBeginImageContext(firstImage.size);
    
    //Bring second image to front
    if(flag) {
        [firstImage drawAtPoint:CGPointMake(0,0)];
        [secondImage drawAtPoint:CGPointMake(firstImage.size.width/2-secondImage.size.width/2,firstImage.size.height/2-secondImage.size.height/2)];
    } else {
        [secondImage drawAtPoint:CGPointMake(0,0)];
        [firstImage drawAtPoint:CGPointMake(secondImage.size.width/2-firstImage.size.width/2,secondImage.size.height/2-firstImage.size.height/2)];
    }
    
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}

@end
