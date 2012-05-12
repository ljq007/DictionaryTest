//
//  main.m
//  DictionaryTest
//
//  Created by Li jianqiang on 12-5-10.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSMutableDictionary *glossary=[NSMutableDictionary dictionary];
        
        //在词汇表中存储三个词条
        [glossary setObject:@"抽象的物件类型中可以包含具体的物件类型" forKey:@"抽象的物件类型"];
        [glossary setObject:@"实施协议中规定的所有措施" forKey:@"遵循"];
        [glossary setObject:@"将物件存储起来备用" forKey:@"归档"];
        
        //将词汇表中的词条读取并且显示出来
        NSLog(@"抽象的物件类型:%@",[glossary objectForKey:@"抽象的物件类型"]);
        NSLog(@"遵循:%@",[glossary objectForKey:@"遵循"]);
        NSLog(@"归档:%@",[glossary objectForKey:@"归档"]);
        
        
        NSDictionary *glossary1 = [NSDictionary dictionaryWithObjectsAndKeys:
                                @"抽象的物件类型中可以包含具体的物件类型", 
                                @"抽象的物件类型",
                                @"实施协议中规定的所有措施",
                                @"遵循",
                                @"将物件存储起来备用",
                                @"归档",
                                nil];
        for (NSString *key in glossary1)//快速枚举
        {
            NSLog(@"key:value   %@:%@",key,[glossary1 objectForKey:key]);
        }
    }
    return 0;
}

