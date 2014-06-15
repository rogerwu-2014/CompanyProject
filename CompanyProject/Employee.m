//
//  Employee.m
//  CompanyProject
//
//  Created by ucom Apple instrucator on 13/9/29.
//  Copyright (c) 2013年 ucom Apple instrucator. All rights reserved.
//

#import "Employee.h"

@implementation Employee
@synthesize name=_name, salary=_salary;

-(void)doJob{
    [self introduceSelf];
}

- (id)init
{
    self = [super init];
    if (self) {
        self.salary = 22000.0f;
        
        empCount++;
    }
    return self;
}


- (Employee*)initWithName:(NSString *)name
{
    self = [self init];
    if (self) {
        self.name = name;
    }
    return self;
}

- (void)dealloc
{
    NSLog(@"%@ is release...", self);
    [_name release];
    [super dealloc];
}

-(void)introduceSelf{
    
    
    static int i=0;
    
    i++;
    
    if (self.name==nil){
        @throw [NSException exceptionWithName:@"NilName" reason:@"Name can not be nil" userInfo:nil]; //p79
    }else{
        NSLog(@"I am %@, salary: %.2f, i: %d", self.name, self.salary, i);
    }
}

-(void)sayHello:(NSString *)peopleName isNeedIntroduceSelf:(BOOL)isNeed{
    NSLog(@"Hello, %@!", peopleName);
    
    if(isNeed){
        [self introduceSelf];
    }
}

+(int)getEmpCount{
    return empCount;
}

+(void)initialize{
    empCount = 1000;
}

@end
