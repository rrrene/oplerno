task :cron => :environment do
  puts 'Pulling new Users From Canvas...'
  CanvasUsers.update_all
  puts 'Pulling new Courses From Canvas...'
  CanvasCourses.update_all
  puts 'done.'
end
