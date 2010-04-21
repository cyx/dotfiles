" Ruby
au BufNewFile,BufRead *.rb,*.rbw,*.gem,*.gemspec	set filetype=ruby
 
" Ruby on Rails
au BufNewFile,BufRead *.builder,*.rxml,*.rjs		set filetype=ruby
 
" Rakefile
au BufNewFile,BufRead [rR]akefile,*.rake		set filetype=ruby
 
" Rantfile
au BufNewFile,BufRead [rR]antfile,*.rant		set filetype=ruby
 
" IRB config
au BufNewFile,BufRead .irbrc,irbrc			set filetype=ruby
 
" Rackup
au BufNewFile,BufRead *.ru				set filetype=ruby
 
" Capistrano
au BufNewFile,BufRead Capfile				set filetype=ruby
 
" Bundler
au BufNewFile,BufRead Gemfile				set filetype=ruby
 
" eRuby
au BufNewFile,BufRead *.erb,*.rhtml			set filetype=eruby

au BufRead,BufNewFile *_spec.rb set filetype=rspec
au BufRead,BufNewFile *_test.rb set filetype=ruby
au BufRead,BufNewFile test_*.rb set filetype=ruby

" Thorfile
au BufNewFile,BufRead [tT]horfile,*.thor		set filetype=ruby
 
