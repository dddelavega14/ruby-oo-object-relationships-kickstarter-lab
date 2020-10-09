class Backer
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        project_backer = ProjectBacker.all.select do |pb|
            pb.backer == self
        end
        project_backer.map do |pb|
            pb.project
        end
    end
end