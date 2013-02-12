class WebSession < ActiveRecord::Base
  attr_accessible :session_id, :data

  def data=(hash)
    self[:data] = Marshal.dump(hash)
  end

  def data
    Marshal.load(self[:data])
  end

  def destroy
    self[:deleted_at] = Time.now
    self.save
  end
end
