class Post < ApplicationRecord
    validates :title, :image_url, :content, presence: true
    before_save :censor

    def censor
        # self.content = self.content.split.reduce([]) {|content, value| content.push(value) if value != "censura"; content}.join(" ")
        self.content = self.content.gsub("auto", " ")
    end
end
