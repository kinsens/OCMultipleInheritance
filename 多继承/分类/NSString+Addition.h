//
//  NSString+Addition.h
//  多继承
//
//  Created by ehsy-pc on 2017/10/26.
//  Copyright © 2017年 ehsy-pc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Addition)
//获取根目录路径
+(NSString *)getHomePath;
//获取Documents文件路径
+(NSString *)getDocumentsPath;
@end
