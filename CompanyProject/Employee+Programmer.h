//
//  Employee+Programmer.h
//  CompanyProject
//
//  Created by ucom Apple instrucator on 13/9/29.
//  Copyright (c) 2013年 ucom Apple instrucator. All rights reserved.
//

#import "Employee.h"

@interface Employee (Programmer)  //p.92 category

-(void)writeCode:(NSString*)language;

@end
