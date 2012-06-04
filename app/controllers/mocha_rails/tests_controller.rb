module MochaRails
  class TestsController < ActionController::Base

    layout 'mocha'

    before_filter do
      dir = Dir.exist?('spec') ? './spec' : './test'
      dir += '/javascripts'
      unless Dir.exist?(dir)
        raise "mocha_rails: Testing directory (spec/javascripts or test/javascipts) does not exist"
      end

      @test_dir = dir
    end


    def index
      @mocha_suite = 'mocha-suite'
    end

    def list
      match = '*-suite.js*'
      search = File.join(@test_dir,match)
      e = Regexp.new(@test_dir + "/(.+?)-suite.js*$","i")
      @mocha_suites = Dir[search].map do |path|
        path.gsub(e,"\\1")
      end
    end

    def page
      @mocha_suite = nil
      suite = params[:suite].to_s
      if suite.length == 0
        redirect_to :action => :index
        return
      end

      search = File.join(@test_dir,suite + '-suite.js*')
      files = Dir[search]
      if files.length > 0
        @mocha_suite = files.first
      end

      render :action => :index
    end
  end

end
