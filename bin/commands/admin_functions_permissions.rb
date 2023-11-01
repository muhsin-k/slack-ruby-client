# frozen_string_literal: true
# This file was auto-generated by lib/tasks/web.rake

module Slack
  module Cli
    class App
      desc 'AdminFunctionsPermissions methods.'
      command 'admin_functions_permissions' do |g|
        g.desc 'Lookup the visibility of multiple Slack functions and include the users if it is limited to particular named entities.'
        g.long_desc %( Lookup the visibility of multiple Slack functions and include the users if it is limited to particular named entities. )
        g.command 'lookup' do |c|
          c.flag 'function_ids', desc: 'An array of function IDs to get permissions for.'
          c.action do |_global_options, options, _args|
            puts JSON.dump(@client.admin_functions_permissions_lookup(options))
          end
        end

        g.desc 'Set the visibility of a Slack function and define the users or workspaces if it is set to named_entities'
        g.long_desc %( Set the visibility of a Slack function and define the users or workspaces if it is set to named_entities )
        g.command 'set' do |c|
          c.flag 'function_id', desc: 'The function ID to set permissions for.'
          c.flag 'visibility', desc: 'The function visibility.'
          c.flag 'user_ids', desc: 'List of user IDs to allow for named_entities visibility.'
          c.action do |_global_options, options, _args|
            puts JSON.dump(@client.admin_functions_permissions_set(options))
          end
        end
      end
    end
  end
end