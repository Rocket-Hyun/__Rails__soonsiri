class ManagerController < ApplicationController
  def index
  end

  def soonsil
    @soonsil = Soonsil
  end

  def yura
    @yura = Yura
  end

  def drip
    @drip = Drip.all
  end

  def soonsil_write
    post = Soonsil.new
    post.title = params[:title]
    post.content = params[:content]
    post.order = params[:order]
    post.image_size = params[:size]
    post.moreurl = params[:moreurl]

    if post.image_size == 0.0
      post.image_url = params[:video]
    else
      uploader = MachineUploader.new
      uploader.store!(params[:img])
      post.image_url = uploader.url
    end

    post.save
    redirect_to :back
  end

  def yura_write
    post = Yura.new
    post.title = params[:title]
    post.content = params[:content]
    post.order = params[:order]
    post.moreurl = params[:moreurl]

    uploader = MachineUploader.new
    uploader.store!(params[:img])
    post.image_url = uploader.url

    post.image_size = params[:size]
    post.save
    redirect_to :back
  end

  def drip_write
    post = Drip.new
    post.title = params[:title]
    post.content = params[:content]

    uploader = MachineUploader.new
    uploader.store!(params[:img])
    post.image_url = uploader.url

    post.image_size = params[:size]
    post.source = params[:source]
    post.source_url = params[:source_url]
    post.save
    redirect_to :back
  end

  def soonsil_delete
    post = Soonsil.find(params[:id])
    post.destroy

    redirect_to :back
  end

  def yura_delete
    post = Yura.find(params[:id])
    post.destroy

    redirect_to :back
  end

  def drip_delete
    post = Drip.find(params[:id])
    post.destroy

    redirect_to :back
  end

  def soonsil_detail
    @post = Soonsil.find(params[:id])
  end

  def yura_detail
    @post = Yura.find(params[:id])
  end

  def drip_detail
    @post = Drip.find(params[:id])
  end

  def soonsil_rewrite
    post = Soonsil.find(params[:id])
    post.title = params[:title]
    post.content = params[:content]
    post.order = params[:order]
    post.image_size = params[:size]
    post.moreurl = params[:moreurl]
    post.save
    redirect_to "/manager/soonsil"
  end

  def yura_rewrite
    post = Yura.find(params[:id])
    post.title = params[:title]
    post.content = params[:content]
    post.order = params[:order]
    post.image_size = params[:size]
    post.moreurl = params[:moreurl]
    post.save
    redirect_to "/manager/yura"
  end

  def drip_rewrite
    post = Drip.find(params[:id])
    post.title = params[:title]
    post.content = params[:content]
    post.image_size = params[:size]
    post.source = params[:source]
    post.source_url = params[:source_url]
    post.save
    redirect_to "/manager/drip"
  end
end
