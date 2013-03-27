class Chef
  class Recipe
    # Does this instance run sidekiq?
    def sidekiq_instance?
      role = node[:instance_role]
      role == 'solo' || role == 'eylocal' || role == 'db_master'
      # (role == 'util' && node[:name] =~ /^sidekiq/)
    end
  end
end