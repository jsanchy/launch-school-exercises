class Banner
  def initialize(message, banner_width = message.size + 4)
    @message = message
    @banner_width = banner_width
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private

  attr_reader :message, :banner_width

  def horizontal_rule
    "+#{'-' * (banner_width - 2)}+"
  end

  def empty_line
    "|#{' ' * (banner_width - 2)}|"
  end

  def message_line
    "|#{@message[0, banner_width - 4].center(banner_width - 2)}|"
  end
end

banner = Banner.new('To boldly go where no one has gone before.')
puts banner

banner = Banner.new('To boldly go where no one has gone before.', 80)
puts banner

banner = Banner.new('To boldly go where no one has gone before.', 20)
puts banner

banner = Banner.new('')
puts banner
