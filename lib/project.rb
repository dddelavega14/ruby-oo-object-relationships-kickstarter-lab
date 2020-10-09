class Project
    attr_accessor :title
    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        project_backer = ProjectBacker.all.select do |pb|
            pb.project == self
        end
        project_backer.map do |pb|
            pb.backer
        end
    end

end