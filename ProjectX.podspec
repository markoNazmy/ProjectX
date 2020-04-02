#
# Be sure to run `pod lib lint ProjectX.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ProjectX'
  s.version          = '0.1.4'
  s.summary          = 'A short description of ProjectX.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/markoNazmy/ProjectX'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'markoNazmy' => 'marko.nazmy@gmail.com' }
  s.source           = { :git => 'https://github.com/markoNazmy/ProjectX.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '13.0'
  s.swift_version = '5.0'

#  s.source_files = 'ProjectX/Classes/**/*'
  
  s.subspec 'BaseModule' do |sp|
      sp.source_files = 'ProjectX/Classes/BaseModule/**/*'
  end
  
  s.subspec 'FirstModule' do |sp|
      sp.source_files = 'ProjectX/Classes/FirstModule/**/*'
      sp.dependency 'ProjectX/BaseModule'
  end
  
  s.subspec 'SecondModule' do |sp|
      sp.source_files = 'ProjectX/Classes/SecondModule/**/*'
      sp.dependency 'ProjectX/BaseModule'
  end
  
  # s.resource_bundles = {
  #   'ProjectX' => ['ProjectX/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
   s.frameworks = 'UIKit', 'SwiftUI'
  # s.dependency 'AFNetworking', '~> 2.3'
end
