class Patient 

attr_accessor :name, :doctor, :appoiment

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

#def initialize(date,patient,doctor)
    def new_appointment(date,doctor)
        Appointment.new(date,self,doctor)
    end
    
    def self.all
        @@all
    end

#returns all appointments associated with this Patient
    def appointments
        Appointment.all.select {|appointment| appointment.patient == self}
    end

#has many doctors through appointments
    def doctors
        appointments.map {|appointment| appointment.doctor}
    end

end