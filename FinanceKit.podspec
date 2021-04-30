Pod::Spec.new do |s|

s.name         = "FinanceKit"
s.version      = "0.1.0"
s.summary      = "金融开发工具类"
s.homepage  = "https://github.com/ic3w33k/FinanceKit"
s.license      = "MIT"
s.author       = { "ic3w33k" => "ic3w33k@gmail.com" }
s.platform     = :ios
s.platform     = :ios, "10.0"
s.source       = { :git => "https://github.com/ic3w33k/FinanceKit.git", :tag => s.version}
s.source_files = "FinanceKit/**/*.{h,m}"
s.requires_arc = true
end