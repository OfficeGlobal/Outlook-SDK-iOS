/*******************************************************************************
**NOTE** This code was generated by a tool and will occasionally be
overwritten. We welcome comments and issues regarding this code; they will be
addressed in the generation tool. If you wish to submit pull requests, please
do so for the templates in that tool.

This code was generated by Vipr (https://github.com/microsoft/vipr) using
the T4TemplateWriter (https://github.com/msopentech/vipr-t4templatewriter).

Copyright (c) Microsoft Corporation. All Rights Reserved.
Licensed under the Apache License 2.0; see LICENSE in the source repository
root for authoritative license information.﻿
******************************************************************************/



#import "MSOutlookResponseType.h"

@implementation MSOutlookResponseTypeSerializer

+(MSOutlookResponseType) fromString:(NSString *) string {

    static NSDictionary *stringMappings=nil;
    
    if(stringMappings==nil)
    {
        stringMappings=[[NSDictionary alloc] initWithObjectsAndKeys:
         [NSNumber numberWithInt:MSOutlookResponseTypeNone], @"None", [NSNumber numberWithInt:MSOutlookResponseTypeOrganizer], @"Organizer", [NSNumber numberWithInt:MSOutlookResponseTypeTentativelyAccepted], @"TentativelyAccepted", [NSNumber numberWithInt:MSOutlookResponseTypeAccepted], @"Accepted", [NSNumber numberWithInt:MSOutlookResponseTypeDeclined], @"Declined", [NSNumber numberWithInt:MSOutlookResponseTypeNotResponded], @"NotResponded",
            nil        
        ];
    }
    
    return [stringMappings[string] intValue];

}

+(NSString *) toString: (MSOutlookResponseType) value {

    static NSDictionary *stringMappings=nil;
    
    if(stringMappings==nil)
    {
        stringMappings=[[NSDictionary alloc] initWithObjectsAndKeys:
         @"None", [NSNumber numberWithInt:MSOutlookResponseTypeNone], @"Organizer", [NSNumber numberWithInt:MSOutlookResponseTypeOrganizer], @"TentativelyAccepted", [NSNumber numberWithInt:MSOutlookResponseTypeTentativelyAccepted], @"Accepted", [NSNumber numberWithInt:MSOutlookResponseTypeAccepted], @"Declined", [NSNumber numberWithInt:MSOutlookResponseTypeDeclined], @"NotResponded", [NSNumber numberWithInt:MSOutlookResponseTypeNotResponded],
            nil        
        ];
    }
    
    return stringMappings[[NSNumber numberWithInt:value]];
}

@end

