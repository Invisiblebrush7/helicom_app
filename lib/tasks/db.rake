namespace :db do

  desc "> Dumps the database to #{Rails.root}/db/helicom_app.dump"
  task :dump => :environment do
    cmd = "pg_dump -v -Fc helicom_app_development > #{Rails.root}/db/helicom_app.dump"
    puts cmd
    exec cmd
  end

  desc "> Restores the database dump at #{Rails.root}/db/helicom_app.dump"
  task :restore => :environment do
    cmd = "pg_restore -v -c -C -d postgres #{Rails.root}/db/helicom_app.dump"
    Rake::Task["db:drop"].invoke
    Rake::Task["db:create"].invoke
    Rake::Task["db:migrate"].invoke
    Rake::Task["db:seed"].invoke
    puts cmd
    exec cmd
  end
end
