require "fileutils"  
class UploadifyController < ApplicationController
	protect_from_forgery :except => :upload  
	skip_before_filter :verify_authenticity_token  
  layout nil

  def upload
    # logger.debug "filedata=#{params[:Filedata]}"
    # share_image = ShareImage.new(:picture=>params[:Filedata])
    
    @share_image = ShareImage.new(:picture=>params[:picture])
    # logger.debug "url======#{@share_image.picture.url}"
    # logger.debug "current_path======#{@share_image.picture.current_path}"
    # FileUtils.move(@share_image.picture.current_path, "#{Rails.root.to_s}/public/uploads/a.png")
    respond_to do |format|
      format.html
    end
=begin
  	file_name = params[:Filename]
    file_name = Time.now.strftime("%y%m%d%I%M%S") + "#{File.extname(file_name)}"
  	file_data = params[:Filedata]
  	file_path = File.join("#{Rails.root.to_s}/public/uploads", file_name)
  	# logger.debug "suffix=#{File.extname(file_name)}"
    # Rails.root.join('public', 'images')
    # logger.debug "fileName=" + file_name
    # File.open(file_path, "wb") { |f| f.write(file_data.read) }
    File.open(file_path, "wb") do |f|
  		f.write(file_data.read)
  	end 

    # logger.debug render :partial => "uploadify"
    # render :json=> {:file_name=>file_name}
    # img_html = render :partial => "cell", :layout => false
    # render :json=> {:file_path=> img_html}
    # render :template => "cell"

    # render :json => { :pic_path => img_server_url + File.join(file_folder, new_name).to_s , :name => new_name }.to_json, :content_type => 'text/xml'
    @share_image = ShareImage.new
    @share_image.img_b = "/uploads/#{file_name}"
    @share_image.img_s = file_name
    respond_to do |format|
      format.html
      # format.json {render :inline => "aaaa"  }
    end
    # html = render :partial => "uploadify/cell"
    # render :text => "aaa"
=end
  end

  def check
  end

end
