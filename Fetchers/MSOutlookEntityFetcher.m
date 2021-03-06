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


#import "MSOutlookFetchers.h"
#import "core/core.h"

@implementation MSOutlookEntityFetcher

@synthesize operations = _operations;

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent {

    if (self = [super initWithUrl:urlComponent parent:parent asClass:[MSOutlookEntity class]]) {

		_operations = [[MSOutlookEntityOperations alloc] initOperationWithUrl:urlComponent parent:parent];
    }

    return self;
}

- (void)update:(id)entity callback:(void (^)(MSOutlookEntity *Entity, MSOrcError *e))callback {

	return [super update:entity callback:callback];
}

- (void)delete:(void (^)(int status, MSOrcError *e))callback {

	return [super deleteWithCallback:callback];
}

- (MSOutlookEntityFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value {
    [super addCustomParametersWithName:name value:value];
    
    return self;
}

- (MSOutlookEntityFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value {
    [super addCustomHeaderWithName:name value:value];
    
    return self;
}

- (MSOutlookEntityFetcher *)select:(NSString *)params {
    [super select:params];
    
    return self;
}

- (MSOutlookEntityFetcher *)expand:(NSString *)value {
    [super expand:value];
    
    return self;
}

- (void) readWithCallback:(void (^)(MSOutlookEntity *Entity, MSOrcError *error))callback {
    [super readWithCallback:^(id response, MSOrcError *error) {
        callback(response, error);
    }];
}

- (MSOutlookAttachmentFetcher *)asAttachment {

	return [[MSOutlookAttachmentFetcher alloc] initWithUrl:@"" parent:self asClass:[MSOutlookAttachment class]];
}

- (MSOutlookItemFetcher *)asItem {

	return [[MSOutlookItemFetcher alloc] initWithUrl:@"" parent:self asClass:[MSOutlookItem class]];
}

- (MSOutlookDirectoryObjectFetcher *)asDirectoryObject {

	return [[MSOutlookDirectoryObjectFetcher alloc] initWithUrl:@"" parent:self asClass:[MSOutlookDirectoryObject class]];
}

- (MSOutlookMailFolderFetcher *)asMailFolder {

	return [[MSOutlookMailFolderFetcher alloc] initWithUrl:@"" parent:self asClass:[MSOutlookMailFolder class]];
}

- (MSOutlookCalendarFetcher *)asCalendar {

	return [[MSOutlookCalendarFetcher alloc] initWithUrl:@"" parent:self asClass:[MSOutlookCalendar class]];
}

- (MSOutlookCalendarGroupFetcher *)asCalendarGroup {

	return [[MSOutlookCalendarGroupFetcher alloc] initWithUrl:@"" parent:self asClass:[MSOutlookCalendarGroup class]];
}

- (MSOutlookContactFolderFetcher *)asContactFolder {

	return [[MSOutlookContactFolderFetcher alloc] initWithUrl:@"" parent:self asClass:[MSOutlookContactFolder class]];
}

- (MSOutlookPhotoFetcher *)asPhoto {

	return [[MSOutlookPhotoFetcher alloc] initWithUrl:@"" parent:self asClass:[MSOutlookPhoto class]];
}

- (MSOutlookSubscriptionFetcher *)asSubscription {

	return [[MSOutlookSubscriptionFetcher alloc] initWithUrl:@"" parent:self asClass:[MSOutlookSubscription class]];
}

- (MSOutlookNotificationFetcher *)asNotification {

	return [[MSOutlookNotificationFetcher alloc] initWithUrl:@"" parent:self asClass:[MSOutlookNotification class]];
}

- (MSOutlookConversationFetcher *)asConversation {

	return [[MSOutlookConversationFetcher alloc] initWithUrl:@"" parent:self asClass:[MSOutlookConversation class]];
}

- (MSOutlookConversationThreadFetcher *)asConversationThread {

	return [[MSOutlookConversationThreadFetcher alloc] initWithUrl:@"" parent:self asClass:[MSOutlookConversationThread class]];
}

@end
