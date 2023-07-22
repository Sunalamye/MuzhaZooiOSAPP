# Uncomment the next line to define a global platform for your project
platform :ios, '9.0'
source 'https://github.com/CocoaPods/Specs.git'


target 'iisi-zoo' do
    use_frameworks!
    
    pod 'SDWebImage'
    pod 'RxSwift'
    pod 'RxCocoa'

post_install do |installer|

    installer.pods_project.targets.each do |target|
      if target.respond_to?(:product_type) and target.product_type == "com.apple.product-type.bundle"
        target.build_configurations.each do |config|
            config.build_settings['CODE_SIGNING_ALLOWED'] = 'NO'
            config.build_settings['ENABLE_USER_SCRIPT_SANDBOXING'] = 'NO'
            config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] ='8.0'
        end
      end
    end

  end

end
