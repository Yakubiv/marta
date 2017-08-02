class Album < ApplicationRecord
  mount_uploader :cover, CoverUploader
end
