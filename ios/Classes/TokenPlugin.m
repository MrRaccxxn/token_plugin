#import "TokenPlugin.h"
#if __has_include(<token_plugin/token_plugin-Swift.h>)
#import <token_plugin/token_plugin-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "token_plugin-Swift.h"
#endif

@implementation TokenPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftTokenPlugin registerWithRegistrar:registrar];
}
@end
