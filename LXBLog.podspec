#
#  Be sure to run `pod spec lint LXBLog.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "LXBLog"
  s.version      = "1.0.1"
  s.summary      = "Elegant HTTP Networking in Swift"

  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  # s.description  = <<-DESC
  #                DESC

  s.homepage     = "https://github.com/chlxb/CocoaTest"
  s.license      = "MIT"

  s.author             = { "liuxiaobing" => "ch_lxb@163.com" }
  s.platform     = :ios, "9.0"

  #  When using multiple platforms
  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"

  s.source       = { :git => "https://github.com/chlxb/CocoaTest.git", :tag => "#{s.version}" }
	s.swift_version = '4.1'
	s.source_files = 'Log/Classes/*.swift'
	# s.public_header_files = 'LogFramework/LogFramework.h'
	s.static_framework = true
  # s.public_header_files = "Classes/**/*.h"
	s.dependency 'Alamofire', '~> 4.7.2'
end
