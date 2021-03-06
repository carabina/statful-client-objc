//
//  Copyright (c) 2016 Statful
//  http://www.statful.com/
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

#import "SFCommunicationSocket.h"
#import "SFCommunicationSocket+Private.h"

@implementation SFCommunicationSocket

#pragma mark - SFCommunicationProtocol Methods

- (instancetype)initWithDictionary:(NSDictionary *)dictionary completionBlock:(SFCommunicationCompletionBlock)completionBlock {
    
    if (self = [super init]) {
        _host = dictionary[@"host"];
        _port = [dictionary[@"port"] integerValue];
        _timeout = [dictionary[@"timeout"] unsignedIntegerValue];
        _queue = dispatch_queue_create([NSStringFromClass([self class]) UTF8String], DISPATCH_QUEUE_SERIAL);
    }
    
    return self;
}

- (void)sendMetricsData:(id)metricsData completionBlock:(SFCommunicationCompletionBlock)completionBlock {}

@end
