class SendWorker
  include Sidekiq::Worker
  def perform(start_date, end_date, email)

    @post = Post.where(:published_at => Time.parse(start_date)..Time.parse(end_date))
    authors = @post.distinct.pluck(:author)
    arr=Array.new
    users=User.all
    authors.each do |author|
      user = users.find_by(nickname: author)
       count_post=@post.where(author: author).count
       arr << {:nickname => user.nickname, :email => user.email, :posts => count_post}
    end
PostMailer.send_mail(email, arr).deliver_now



  end
end
