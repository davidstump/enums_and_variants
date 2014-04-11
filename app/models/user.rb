class User < ActiveRecord::Base
  enum role: {student: 0, staff: 1, admin: 2}

  def role=(value)
    # do_stuff
    super(value)
  end
end
