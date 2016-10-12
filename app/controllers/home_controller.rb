class HomeController < ApplicationController

  def index

  end

  def personal

  end

  def life

  end

  def about

  end

  def contact

  end

  def feedback

  end

  def sidekiq_job
    count = params[:sidekiq_job][:count].present? ? params[:sidekiq_job][:count] : 1
    count.to_i.times do
      HardWorkerJob.set(wait: params[:sidekiq_job][:delay].present? ? params[:sidekiq_job][:delay].to_i.seconds : 0.seconds).perform_later({name: 'bobo'})
    end
  end

end
