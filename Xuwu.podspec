#
# Be sure to run `pod lib lint Xuwu.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'Xuwu'
    s.version          = '0.1.5'
    s.summary          = 'A Library of Xuwu.'
    
    # This description is used to generate tags and improve search results.
    #   * Think: What does it do? Why did you write it? What is the focus?
    #   * Try to keep it short, snappy and to the point.
    #   * Write the description between the DESC delimiters below.
    #   * Finally, don't worry about the indent, CocoaPods strips it!
    
    s.description      = <<-DESC
    TODO: Add long description of the pod here.
    DESC
    
    s.homepage         = 'https://github.com/xuwu-chaiqiwei/Xuwu'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'chaiqiwei-mini' => 'chaiqiwei@kekestar.com' }
    s.source           = { :git => 'git@github.com:xuwu-chaiqiwei/Xuwu.git', :tag => s.version.to_s }
    # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
    
    s.ios.deployment_target = '10.0'
    s.swift_versions = '5'
    s.static_framework = true
    s.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 armv7 arm64' }
    
    s.subspec 'IM' do |im|
        im.source_files = 'Xuwu/Classes/IM/Classes/*'
        im.vendored_frameworks = 'Xuwu/Frameworks/XuwuIM.framework'
        im.dependency 'AgoraRtcEngine_iOS', '3.4.0'
        im.dependency 'RongCloudIM/IMKit', '4.0.3.7'
    end
    
    s.subspec 'DB' do |db|
        db.source_files = 'Xuwu/Classes/DB/Classes/*'
        db.vendored_frameworks = 'Xuwu/Frameworks/XuwuDB.framework'
        db.dependency 'SwiftProtobuf'
        db.dependency 'Moya', '14.0.0'
        db.dependency 'WCDB.swift'
        db.dependency 'CryptoSwift'
        db.dependency 'XCGLogger'
    end
    
    s.subspec 'UIKit' do |kit|
        kit.source_files = 'Xuwu/Classes/UIKit/Classes/*'
        kit.vendored_frameworks = 'Xuwu/Frameworks/XuwuUIKit.framework'
        kit.dependency 'SwiftProtobuf'
        kit.dependency 'Kingfisher', '6.2.1'
        kit.dependency 'HBDNavigationBar'
        kit.dependency 'JXSegmentedView'
        kit.dependency 'DZNEmptyDataSet'
        kit.dependency 'TangramKit'
        kit.dependency 'MJRefresh'
        kit.dependency 'Toast-Swift'
    end
    
end
