#
# Be sure to run `pod lib lint SwiftUtilities.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'SwiftUtilities'
    s.version          = '1.4.0'
    s.summary          = 'Generic Swift extensions and helper functions.'
    
    # This description is used to generate tags and improve search results.
    #   * Think: What does it do? Why did you write it? What is the focus?
    #   * Try to keep it short, snappy and to the point.
    #   * Write the description between the DESC delimiters below.
    #   * Finally, don't worry about the indent, CocoaPods strips it!
    
    s.description      = <<-DESC
This library provides some helper functions and structures useful for Function Programming.
                         DESC
    
    s.homepage         = 'https://github.com/rodrigoruiz/SwiftUtilities.git'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Rodrigo Ruiz' => 'rodrigo.ruiz7@gmail.com' }
    s.source           = { :git => 'https://github.com/rodrigoruiz/SwiftUtilities.git', :tag => s.version.to_s }
    # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
    # s.ios.deployment_target = '9.0'
    # s.source_files = 'SwiftUtilities/Classes/**/*'
    s.default_subspec = 'Complete'
    
    # s.resource_bundles = {
    #   'SwiftUtilities' => ['SwiftUtilities/Assets/*.png']
    # }
    
    # s.public_header_files = 'Pod/Classes/**/*.h'
    
    s.subspec 'Complete' do |subspec|
        subspec.dependency 'SwiftUtilities/Lite'
        subspec.dependency 'SwiftUtilities/External'
        subspec.dependency 'SwiftUtilities/Cocoa'
        subspec.dependency 'SwiftUtilities/iOSDependencies'
    end
    
    s.subspec 'Lite' do |subspec|
        s.ios.deployment_target = '9.0'
        subspec.source_files = 'SwiftUtilities/Lite/**/*'
    end
    
    s.subspec 'Experimental' do |subspec|
        subspec.source_files = 'SwiftUtilities/Experimental/**/*'
        subspec.dependency 'SwiftUtilities/Lite'
        subspec.dependency 'RxSwift', '~> 4.0.0'
        subspec.dependency 'SwiftyJSON'
    end
    
    s.subspec 'External' do |subspec|
        subspec.source_files = 'SwiftUtilities/External/**/*'
        subspec.dependency 'ReSwift'
        subspec.dependency 'RxSwift', '~> 4.0.0'
        subspec.dependency 'SwiftyJSON'
    end
    
    s.subspec 'Cocoa' do |subspec|
        subspec.ios.deployment_target = '9.0'
        subspec.source_files = 'SwiftUtilities/Cocoa/**/*'
        subspec.frameworks = 'MessageUI', 'UIKit'
        subspec.dependency 'SwiftUtilities/Lite'
        subspec.dependency 'RxCocoa', '~> 4.0.0'
        subspec.dependency 'RxSwift', '~> 4.0.0'
    end
    
    s.subspec 'iOSDependencies' do |subspec|
        subspec.dependency 'ReSwift'
        subspec.dependency 'RxCocoa', '~> 4.0.0'
        subspec.dependency 'RxSwift', '~> 4.0.0'
        subspec.dependency 'SwiftyJSON'
        
        #  pod 'SlackTextViewController'
        #  pod 'Kingfisher'
        #  pod 'SwiftyTimer', git: 'https://github.com/radex/SwiftyTimer.git', branch: 'swift3'
        #  pod 'Cartography', :git => 'https://github.com/alexiosdev/Cartography.git', :branch => 'swift3_alex'
        #  pod 'SlackTextViewController'
        
        # Other libraries
        # https://gitlab.com/vsouza/awesome-ios
    end
end
