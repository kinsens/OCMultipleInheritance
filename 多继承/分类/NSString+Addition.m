//
//  NSString+Addition.m
//  多继承
//
//  Created by ehsy-pc on 2017/10/26.
//  Copyright © 2017年 ehsy-pc. All rights reserved.
//

#import "NSString+Addition.h"

@implementation NSString (Addition)
//实现获取根目录方法
+(NSString *)getHomePath{
    
    return NSHomeDirectory();
    
}
//实现获取Documents文件路径方法
+(NSString *)getDocumentsPath{
    
    // 给字符串追加上一个字符串
    
    return [NSHomeDirectory()stringByAppendingString:@"/Documents"];
    
}
@end
