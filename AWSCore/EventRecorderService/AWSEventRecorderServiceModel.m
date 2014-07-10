/*
 * Copyright 2010-2014 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

#import "AWSEventRecorderServiceModel.h"
#import "AZCategory.h"

NSString *const AWSEventRecorderServiceErrorDomain = @"com.amazonaws.AWSEventRecorderServiceErrorDomain";

@implementation AWSEventRecorderServiceEvent

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"attributes" : @"attributes",
             @"eventType" : @"eventType",
             @"metrics" : @"metrics",
             @"session" : @"session",
             @"timestamp" : @"timestamp",
             @"version" : @"version",
             };
}

+ (NSValueTransformer *)sessionJSONTransformer {
	return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[AWSEventRecorderServiceSession class]];
}

@end

@implementation AWSEventRecorderServicePutEventsInput

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"clientContext" : @"clientContext",
             @"events" : @"events",
             };
}

+ (NSValueTransformer *)eventsJSONTransformer {
	return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[AWSEventRecorderServiceEvent class]];
}

@end

@implementation AWSEventRecorderServiceSession

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"duration" : @"duration",
             @"id" : @"id",
             @"startTimestamp" : @"startTimestamp",
             @"stopTimestamp" : @"stopTimestamp",
             };
}

@end
