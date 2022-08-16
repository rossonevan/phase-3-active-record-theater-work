class Role < ActiveRecord::Base
    has_many :auditions

    def actors
        self.auditions.pluck(:actor)
    end

    def locations
        self.auditions.pluck(:location)
    end

    def lead
       hired =  self.auditions.find_by(hired:true)
       if hired
        return hired
       else
        return 'no actor has been hired for this role'
       end
    end

    def understudy
        hired = self.auditions.where(hired:true)
        if hired[1]
            return hired[1]
        else
        return 'no actor has been hired for understudy for this role'
        end
    end

end