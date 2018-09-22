platform :ios, '10.0'
use_frameworks!

def common
    pod 'IQKeyboardManagerSwift', '~> 5.0.8'
    pod 'ObjectMapper', '~> 3.3'
    pod 'Curry', '~> 4.0'
    pod 'QorumLogs', '~> 0.9'
    pod 'Swinject', '~> 2.5'
    pod 'RxSwift', '~> 4.3'
    pod 'RxSwiftExt', '~> 3.3'
    pod 'RxCocoa', '~> 4.3'
    pod 'RxFlow', '~> 1.5'
end

def test
    pod 'RxTest', '~> 4.3'
    pod 'RxBlocking', '~> 4.3'
end

target 'Application' do
    common
end
target 'ApplicationTests' do
    common
    test
end

target 'Common' do
    common
end
target 'CommonTests' do
    common
    test
end

target 'Domain' do
    common
end
target 'DomainTests' do
    common
    test
end

target 'Platform' do
    common
end
target 'PlatformTests' do
    common
    test
end
