class Job
  @queue = :resque_coverband

  def self.perform()
    puts "perform"
  end
end

