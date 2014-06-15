//
//  Manager.h
//  CompanyProject
//
//  Created by ucom Apple instrucator on 13/9/29.
//  Copyright (c) 2013年 ucom Apple instrucator. All rights reserved.
//

#import "Employee.h"

@interface Manager : Employee

@property (nonatomic, strong) NSString *jobTitle;

-(id)initWithName:(NSString *)name jobTitle:(NSString*)title;

-(void)speakTo:(NSString*)peopleName messageInfo:(NSString*)msg;

@end
