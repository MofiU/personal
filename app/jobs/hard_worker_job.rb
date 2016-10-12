class HardWorkerJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    puts "DO something"
    p '---------------------'
    p args
  end
end
