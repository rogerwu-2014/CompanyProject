//
//  Employee.h
//  CompanyProject
//
//  Created by ucom Apple instrucator on 13/9/29.
//  Copyright (c) 2013年 ucom Apple instrucator. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Worker.h"

static int empCount;

@interface Employee : NSObject<Worker>

@property (readwrite, strong, nonatomic,
           getter=getName, setter = assignName:) NSString *name;

@property CGFloat salary; //(readwrite, assign)

-(Employee*)initWithName:(NSString*)name;

-(void)introduceSelf;

-(void)sayHello:(NSString*)peopleName isNeedIntroduceSelf:(BOOL)isNeed;
//-(void)sayHello:(NSString*)peopleName :(BOOL)isNeed;

+(int)getEmpCount;

@end
