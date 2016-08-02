//
//  Utils.m
//  MTTree
//
//  Created by 漫涂 on 16/8/2.
//  Copyright © 2016年 漫涂. All rights reserved.
//

#import "Utils.h"

@implementation Utils
+(Utils *)instance{
    static Utils *utils;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        utils = [[Utils alloc]init];
    });
    return utils;
}
+(UIImage *)createImageWithColor:(UIColor *)color{
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return theImage;
}
@end
