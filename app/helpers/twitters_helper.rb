module TwittersHelper
  def twitter2
    twitter2 = TwitterSearch.last.search
  end
 end
