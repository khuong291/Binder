Pod::Spec.new do |s|
  s.name         = "Binder"
  s.version      = "1.0.0"
  s.summary      = "A lightweight data binding for components on iOS"
  s.description  = <<-DESC
                    A lightweight data binding for components on iOS
                   DESC
  s.homepage     = "http://github.com/khuong291/Binder"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Khuong Pham" => "dkhuong291@gmail.com" }
  s.social_media_url   = "http://twitter.com/khuong291"
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/khuong291/Binder.git", :tag => "1.0.0" }
  s.source_files = "Binder", "Binder/**/*.{h,m,swift}"
end