Pod::Spec.new do |s|
  s.name          = 'Freestyler'
  s.version       = '0.1.0'
  s.summary       = 'Easy to use and lightweight theme manager.'
  s.description   = <<-DESC
  Easy to use and lightweight theme manager for iOS applications written in Swift with UIKit, but taking advantages of Objective-C reflection capabilities.
                    DESC

  s.homepage      = 'https://github.com/wupdigital/Freestyler'
  s.screenshot   = 'https://github.com/wupdigital/Freestyler/blob/master/Example/freestyler.gif?raw=true'
  s.license       = { :type => 'Apache License, Version 2.0', :text => 'LICENSE' } 
  s.author        = 'W.UP'

  s.source                = { :git => 'https://github.com/wupdigital/Freestyler.git', :tag => s.version.to_s }
  s.ios.deployment_target = '10.0'
  s.source_files          = 'Freestyler/Freestyler/**/*.swift'
  s.swift_versions        = '5.1'
end
