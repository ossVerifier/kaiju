require 'id_generator'
require 'kaiju/workspace'
require 'kaiju/component_factory'

# Public: A workspace model
module Kaiju
  class WorkspaceFactory
    def self.new_workspace(author, project_type)
      workspace = Workspace.new(IdGenerator.object_name)
      workspace.author = author
      now = Time.now.iso8601_precise
      workspace.creation_date_time = now
      workspace.update_date_time = now
      workspace.name = 'Untitled Workspace'
      workspace.project_type = project_type
      workspace.component = ComponentFactory.new_workspace_component(project_type).id
      workspace
    end
  end
end
